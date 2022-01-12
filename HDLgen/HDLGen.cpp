//-----------------------------------------------------------------------------
// Mark Zakharov
// HDLGen.cpp
// Holds function definitions for those declared in HDLGen.h
//
// To maintain consistency, the width length of each input will be the
// [bit_min, BIT_LIMIT) based on the order of them being generated. That is an
// inclusive minimum and an exclusive maximum!
// Ex: BIT_LIMIT = 5, bit_min = 2
// possible inputs generated: a0 [2:0], a1 [3:0], a2[4:0], a3[2:0]
//-----------------------------------------------------------------------------
#include <string.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <string>
#include <iostream>
#include "HDLGen.h"
#include "FunctionGen.h"

#define INPUT_LIMIT 20
#define INPUT_MIN INPUT_LIMIT/2

#define SRAM_SIZE 16
#define SRAM_DATA_SIZE 16
#define SRAM_ADDR_SIZE 4

using namespace std;

// Heirarchy Creation functions -----------------------------------------------

// createHierarchy()
// Loops through generating larger and larger submodules until the top is produced last.
// Levels starting at 1 determines how many levels of submodules exist below the top.
// Split is the ratio of the sizes of inputs and bit_max of each level.
void createHierarchy(FILE *v, FILE *c, FILE *p, int inputs, int bit_max, int levels, int split, int budget, uint32_t seed, bool allow_constants, bool memory){
	set_seed(seed);	//random start to generation
	fprintf(c, "package randomchisel\n");
	fprintf(c, "import chisel3._\n");		//allows scala to be compiled as chisel
	fprintf(c,"import chisel3.util._\n");	//necessary import for utils like Cat() and Mux()
	bool has_child=0;	//flag set once more than 1 level has been created
	int sub_output_width;	//previous lower levels output width
	int i;
	int current_bit_max = bit_max;
	int current_inputs = inputs;
	
	for(levels--;levels>=0;levels--){	

		for(i=levels;i>0;i--){	//adjusts proper bit max and inputs levels
			current_bit_max=(current_bit_max/split);
			current_inputs = (current_inputs/split);
		}	
		if(current_inputs<1)	//modules alwayss have inputs
			current_inputs=1;

		// Prints beginnings of each file
		sub_output_width = declareModule(v, c, p, current_inputs, current_bit_max, levels, split, has_child);
		// Prints wires
		declareWires(v, c, p, current_inputs, current_bit_max, sub_output_width, has_child, allow_constants);
		// Prints submodule instantiations
		if(has_child)
			createSubmodules(v, c, p, current_inputs, current_bit_max, split, levels, allow_constants);
		// Prints assigns and concatenated output
		declareOutput(v, c, p, current_inputs, current_bit_max, sub_output_width, budget-levels, has_child, allow_constants);
		// Resets values for next loop
		current_inputs = inputs;
		current_bit_max = bit_max;
		has_child=1;	//sets flag after first level generated
	}
	if(memory){}	//creates separate output driven by small SRAM module

}

// declareModule(), helper to init_IO()
// Prints verilog standard module declaration to files
// Randomly creates and returns amount of input variables to be used
// If 0 inputs is passed in, a random amound of inputs is created
// Returns sub modules output width, or 0 if there is no child
int declareModule(FILE *v, FILE *c, FILE *p, int inputs, int bit_max, int levels, int split, bool has_child){
	// First necessary lines, names submodule if necessary
	fprintf(v,"module ");
	fprintf(c, "\nclass ");
	for(int i =levels;i>0;i--){				//names submodule accordingly
		fprintf(v, "sub_");
		fprintf(c, "sub_");
	}
	fprintf(v,"randomverilog(");	
	fprintf(c,"randomchisel extends Module {\n");
	fprintf(c, "	val io = IO(new Bundle {\n");

	// Declares Inputs/Outputs depending on if the module has a child (submodule) or not
	return verilog_chiselIO(v,c,p,inputs,bit_max,levels,split,has_child);
}

// verilog_chiselIO()
// Helper (more like doer of pretty much everything) to declareModule
// Prints to file inputs and outputs of currently declaring module
// Returns sub modules output width, or 0 if there is no child
int verilog_chiselIO(FILE *v, FILE *c, FILE *p, int inputs, int bit_max, int levels, int split, bool has_child){
	fprintf(v, "	input clock,\n" );	//need this for comparison to chisel, as clk and rst are implied inputs
	fprintf(v, "	input reset,\n" );
	fprintf(p, "$clock.__sbits = 1\n");
	fprintf(p, "$reset.__sbits = 1\n");
	int i;
	int output_width=0;
	int current_width=0;
	int sub_output_width=0;
	int bit_min=bit_max/2;
	if(has_child){
		// Calculates submodules output width, for each wire to be created will also be a submodule instantiation
		int sub_inputs = inputs/split;
		int sub_bit_max = bit_max/split;
		int sub_bit_min = sub_bit_max/2;
		for(i=0;i<sub_inputs;i++){
			sub_output_width+=sub_bit_min+1+(i%(sub_bit_max-sub_bit_min+1));
		}

		for(i=0;i<(inputs/2);i++){	//Calculates output_width, which is the first half of the inputs created, and the same amount of submodule insantiations
			current_width = bit_min+1+(i%(bit_max-bit_min+1));
			output_width += current_width;
			output_width += sub_output_width;
		}

	}
	for(i=0;i<inputs;i++){	//prints inputs
		current_width = bit_min+1+(i%(bit_max-bit_min+1));
		fprintf(v, "	input %s[%d:0] io_a%d,\n",current_width%2?"signed ":"",current_width-1,i);
		fprintf(c, "		val a%d = Input(%s(%d.W))\n",i,current_width%2?"SInt":"UInt",current_width);
		fprintf(p, "$io_a%d.__sbits = %d\n",i,current_width);	 //pyrope always uses signed IO, better to create internal wires that copy verilog/chisel unsigned wires
		if(!has_child){
			output_width += current_width;
		}
	}
	fprintf(v, "	output [%d:0] io_y);\n",output_width-1);
	fprintf(c, "		val y = Output(UInt(%d.W))\n",output_width);
	fprintf(c, "	})\n");
	fprintf(p, "%%io_y.__sbits = %d\n",output_width);  //pyrope always uses signed IO, better to just set it as signed than have it create a unsigned output forcing width+1
	return sub_output_width;
}

// declareWires()
// Createswires which will serve either as the output of the top level, or as connections to lower levels
void declareWires(FILE *v, FILE *c, FILE *p, int inputs, int bit_max, int sub_output_width, bool has_child, bool allow_constants){
	fprintf(v, "\n" );
	fprintf(c, "\n" );
	int i,current_width;
	int bit_min=bit_max/2;
	if(has_child){
		for(i=0;i<(inputs/2);i++){	//prints submodule output wires
			fprintf(v, "	wire [%d:0] x%d;\n",sub_output_width-1,i);
			fprintf(c, "	val x%d = Wire(UInt(%d.W))\n",i,sub_output_width);
		}
		
	}
	fprintf(v, "\n");
	fprintf(c, "\n");
	if(allow_constants){	//does the same thing as generic top level wires, only all operands are constants
		for(i=0;i<(inputs/(has_child?2:1));i++){	//prints top level logic wires
			current_width = bit_min+1+(i%(bit_max-bit_min+1));
			fprintf(v, "	wire %s[%d:0] b%d;\n",current_width%2?"signed ":"",current_width-1,i);
			fprintf(c, "	val b%d = Wire(%s(%d.W))\n",i,current_width%2?"SInt":"UInt",current_width);
		}
	}
	fprintf(v, "\n");
	fprintf(c, "\n");
	for(i=0;i<(inputs/(has_child?2:1));i++){	//prints top level logic wires
		current_width = bit_min+1+(i%(bit_max-bit_min+1));
		fprintf(v, "	wire %s[%d:0] y%d;\n",current_width%2?"signed ":"",current_width-1,i);
		fprintf(c, "	val y%d = Wire(%s(%d.W))\n",i,current_width%2?"SInt":"UInt",current_width);
		//pyrope always has signed IO, so we need to create wires that represent the unsigned IO verilog/chisel uses
		fprintf(p, "\na%d.__%cbits = %d\n",i,current_width%2?'s':'u',current_width);
		fprintf(p, "a%d = $io_a%d\n",i,i);
		fprintf(p, "y%d.__%cbits = %d\n",i,current_width%2?'s':'u',current_width);
	}
}


// createROM(), helper to declareWires()
// Creates a Chisel based ROM from its VecInit function, with UInt elements
// ROM defaults any unknown addr values to the 0 element in the vector
void createROM(FILE *v, FILE *c, FILE *p, int inputs, int bit_max) {
	uint32_t rom_addr_size = inputs;
	rom_addr_size |= rom_addr_size >> 1;   // Divide by 2^k for consecutive doublings of k up to 32,
	rom_addr_size |= rom_addr_size >> 2;   // and then or the results.
	rom_addr_size |= rom_addr_size >> 4;
	rom_addr_size |= rom_addr_size >> 8;
	rom_addr_size |= rom_addr_size >> 16;
	rom_addr_size -= rom_addr_size >> 1;
	fprintf(v, "\nwire rom_addr [%d:0] = ", rom_addr_size);
	fprintf(c, "\nval rom_addr = Wire(UInt(%d.W))", rom_addr_size+1);
	functionGen(v, c, p, inputs, bit_max, rom_addr_size+1, 3, 0, 0, 1, 0, 0, 1, 0, 0);
	// Due to verilog ROM and chisel ROM specifying first two elements in different orders we must precompute
	int elm1 = num_less_than(bit_max);
	int elm2 = num_less_than(bit_max);
	fprintf(v, ";\n");
	fprintf(c, "\nval rom = VecInit(%d.U, %d.U", elm1, elm2);
	fprintf(v, "wire [%d:0] _ROM_1 = %d'h1 == rom_addr ? %d'h%d : %d'h%d;\n", bit_max, rom_addr_size, bit_max+1, elm2, bit_max+1, elm1);
	for(int i=2; i<=bit_max; i++) {
		fprintf(v, "wire [%d:0] _ROM_%d = %d'h%d == rom_addr ? ", bit_max, i, rom_addr_size, i);
		fprintf(c, ", ");
		randomConstant(v, c, bit_max+1, 0);
		fprintf(v, ": _ROM_%d;\n", i-1);
	}
	fprintf(c, ")\n");
}

// declareSubmodules()
// Handles declaration of each submodule, given the previously generates x wires for their output
void createSubmodules(FILE *v, FILE *c, FILE *p, int inputs, int bit_max, int split, int levels, bool allow_constants){
	int i,j,current_width;
	int sub_inputs = inputs/split;
	if(sub_inputs<1){
		sub_inputs=1;
	}
	int sub_bit_max = bit_max/split;
	int sub_bit_min=sub_bit_max/2;
	
	string sub = "";
	for(j=0;j<levels+1;j++){
		sub = sub + "sub_";
	}
	const char* sub_ptr = sub.data();
	for(i=0;i<(inputs/2);i++){	//creates a submodule for each x wire
		fprintf(v, "	%srandomverilog %sm_%d (.clock(clock),\n",sub_ptr,sub_ptr,i);
		fprintf(v, "			.reset(reset),\n");

		fprintf(c, "	val %sm_%d = Module(new %srandomchisel())\n",sub_ptr,i,sub_ptr);
		// Begins assigning inputs to submodules
		for(j=0;j<sub_inputs;j++){
			current_width = sub_bit_min+1+(j%(sub_bit_max-sub_bit_min+1));
			fprintf(v, "			.io_a%d(",j);
			fprintf(c, "	%sm_%d.io.a%d := ",sub_ptr,i,j);
			/*if(current_width%2){
				fprintf(v, "$signed" );
			}*/
			randomInput(v, c, p, inputs, bit_max, current_width, current_width%2, 1, 0, allow_constants, j, 1);	//needs to know if signed inputs align or not
			/*if(current_width%2){
				fprintf(c, ".asSInt" );
			}*/
			fprintf(v, "),\n");
			fprintf(c, "\n");
		}
		// Prints output connections
		fprintf(v, "			.io_y(x%d));\n",i);
		fprintf(c, "	x%d := %sm_%d.io.y\n",i,sub_ptr,i);
	}
}

// declareOutput()
// Does assign statements for each top level wire and connects all wires to concatenated output
void declareOutput(FILE *v, FILE *c, FILE *p, int inputs, int bit_max, int sub_output_width, int budget, bool has_child, bool allow_constants){
	fprintf(v, "\n" );
	fprintf(c, "\n" );
	int i, current_width;
	int prp_shift_counter = 0;	//due to a lack of prp support for concat, we must shift and OR wires into the output
	if(has_child){
		if(allow_constants){
			for(i=0;i<(inputs/2);i++){	//assigns top level complex constant declarations
				current_width = getInputWidth(bit_max, i);
				printAssignments(v,c,p,inputs,bit_max,current_width,budget,i,current_width%2,1,allow_constants,has_child);
			}
		}
		fprintf(v, "\n");
		fprintf(c, "\n");
		for(i=0;i<(inputs/2);i++){	//assigns top level wires
			current_width = getInputWidth(bit_max, i);
			printAssignments(v,c,p,inputs,bit_max,current_width,budget,i,current_width%2,0,allow_constants,has_child);

		}
		fprintf(v, "\n	assign io_y = {");
		fprintf(c, "\n	io.y := Cat(");
		for(i=0;i<(inputs/2);i++){	//creates concatenated output TO-DO: REVERSE ORDER OF WIRES PRINTED
			current_width = getInputWidth(bit_max, i);
			fprintf(v, "x%d,",i);
			fprintf(v, "y%d%c",i,i==(inputs/2)-1?'}':',');
			fprintf(c, "x%d(%d,0),",i,sub_output_width-1);
			fprintf(c, "y%d(%d,0)%c",i, current_width-1,i==(inputs/2)-1?')':',');
		}
	}
	else{
		if(allow_constants){
			for(i=0;i<inputs;i++){	//assigns top level complex constant declarations
				current_width = getInputWidth(bit_max, i);
				printAssignments(v,c,p,inputs,bit_max,current_width,budget,i,current_width%2,1,allow_constants,has_child);
			}
		}
		fprintf(v, "\n");
		fprintf(c, "\n");
		for(i=0;i<inputs;i++){	//assigns top level wires
			current_width = getInputWidth(bit_max, i);
			printAssignments(v,c,p,inputs,bit_max,current_width,budget,i,current_width%2,0,allow_constants,has_child);
			prp_shift_counter += current_width;
		}
		fprintf(v, "\n	assign io_y = {");
		fprintf(c, "\n	io.y := Cat(");
		fprintf(p, "\n %%io_y =");
		for(i=inputs-1;i>=0;i--){	//creates concatenated output
			current_width = getInputWidth(bit_max, i);
			prp_shift_counter -= current_width;
			fprintf(v, "y%d%c",i,!i?'}':',');
			fprintf(c, "y%d(%d,0)%c",i, current_width-1, !i?')':',');
			fprintf(p, " ((y%d & %d) << %d) %c",i, (1 << current_width) - 1, prp_shift_counter, !i?' ':'|');
		}
	}
	fprintf(v, ";" );
	fprintf(v, "\nendmodule\n");
	fprintf(c, "\n}\n" );
}

