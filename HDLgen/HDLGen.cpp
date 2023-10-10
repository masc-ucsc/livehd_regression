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
#include "include/HDLGen.h"

#define SRAM_SIZE 16
#define SRAM_DATA_SIZE 16
#define SRAM_ADDR_SIZE 4

// Heirarchy Creation functions -----------------------------------------------

// createHierarchy()
// Loops through generating larger and larger submodules until the top is produced last.
// Levels starting at 1 determines how many levels of submodules exist below the top.
// Split is the ratio of the sizes of inputs and bit_max of each level.
void createHierarchy(Circuit* top_level, uint32_t seed) {
	set_seed(seed);	//random start to generation

	Circuit* newCircuit;
	Circuit* currentCircuit = top_level;

	for (int i = currentCircuit->levels; i>1; i--) {
		newCircuit = new Circuit(currentCircuit->name, currentCircuit->c, currentCircuit->p, currentCircuit->v, 
			currentCircuit->bit_max/currentCircuit->split, currentCircuit->inputs/currentCircuit->split, 
			currentCircuit->levels - 1, currentCircuit->budget-currentCircuit->levels, currentCircuit->split, 
			currentCircuit->error, currentCircuit->constants);

		if (!(currentCircuit->setChild(newCircuit) && newCircuit->setParent(currentCircuit))) {
			std::cerr << "Linking circuits failed at level " << i << std::endl;
			exit(EXIT_FAILURE);
		}
		currentCircuit = newCircuit;	
	}

	while (currentCircuit) {		//creation loop
		currentCircuit->declareModule();
		currentCircuit->declareWires();
		if (currentCircuit->hasChild())
			currentCircuit->createSubmodules();
		currentCircuit->declareOutput();
		currentCircuit = currentCircuit->getParent();
	}
}

// Prints verilog/chisel standard module declaration to files
void Circuit::declareModule() {
	// First necessary lines, names submodule if necessary
	v->log("module ");
	c->log("\nclass ");

	for (int i = levels; i > 1; i--) {				//names submodule accordingly
		v->log("sub_");
		c->log("sub_");
	}

	v->log(name + "(");	
	c->log("randomchisel extends Module {\n");
	c->log("	val io = IO(new Bundle {\n");

	dumpLogs();

	// Declares Inputs/Outputs depending on if the module has a child (submodule) or not
	verilog_chiselIO();
}

// Helper (more like doer of pretty much everything) to declareModule
// Prints to file inputs and outputs of currently declaring module
void Circuit::verilog_chiselIO() {
	//v->log("  input clock,\n" );	//need this for comparison to chisel, as clk and rst are implied inputs
	//v->log("  input reset,\n" );
	p->log("$clock.__sbits = 1\n");
	p->log("$reset.__sbits = 1\n");

	int current_width;

	for (int i = 0; i < inputs; i++) {	//prints inputs
		current_width = getInputWidth(i);

		std::string v_sign = "[";
		std::string c_sign = "UInt(";

		if (current_width % 2) {
			v_sign = "signed [";
			c_sign = "SInt(";
		}

		v->log("  input " + v_sign + STR(current_width - 1) + ":0] a" + STR(i) + "_i" + ",\n");
		c->log("		val a" + STR(i) + " = Input(" + c_sign + STR(current_width) + ".W))\n");
		p->log("$io_a" + STR(i) + ".__sbits = " + STR(current_width) + "\n");	 //pyrope always uses signed IO, better to create internal wires that copy verilog/chisel unsigned wires
	}

	v->log("  output [" + STR(output_width-1) + ":0] y_o\n);");
	c->log("		val y = Output(UInt(" + STR(output_width) + ".W))\n");
	c->log("	})\n");
	p->log("%io_y.__sbits = " + STR(output_width) + "\n");  //pyrope always uses signed IO, better to just set it as signed than have it create a unsigned output forcing width+1

	dumpLogs();
}

// Creates wires which will serve either as the output of the top level, or as
// connections to lower levels
void Circuit::declareWires() {
	v->log("\n" );
	c->log("\n" );

	int i, current_width;

	std::string v_wire_sign, c_wire_sign, prp_wire_sign;

	if (hasChild()) {
		for (i = 0; i < inputs / 2; i++) {	//prints submodule output wires
			v->log("  wire [" + STR(getChild()->output_width-1) + ":0] x" + STR(i) + ";\n");
			c->log("	val x" + STR(i) + " = Wire(UInt(" + STR(getChild()->output_width) + ".W))\n");
		}
	}

	c->log("\n");

	if (constants) {	//does the same thing as generic top level wires, only all operands are constants
		for (i = 0; i < (inputs/(hasChild()?2:1)); i++){	//prints top level logic wires
			current_width = getInputWidth(i);

			if (current_width % 2) {
				v_wire_sign = " signed ";
				c_wire_sign = "SInt(";
				prp_wire_sign = "s";
			}
			else {
				v_wire_sign = " ";
				c_wire_sign = "UInt(";
				prp_wire_sign = "u";
			}

			v->log("  wire" + v_wire_sign + "[" + STR(current_width-1) + ":0] b" + STR(i) + "_w;\n");
			c->log("	val b" + STR(i) + " = Wire(" + c_wire_sign + STR(current_width) + ".W))\n");
			p->log("b" + STR(i) + ".__" + prp_wire_sign + "bits = " + STR(current_width) + "\n");
		}
	}

	c->log("\n");

	for (i = 0; i < (inputs/(hasChild()?2:1)); i++) {	//prints top level logic wires
		current_width = getInputWidth(i);

		if (current_width % 2) {
			v_wire_sign = " signed ";
			c_wire_sign = "SInt(";
			prp_wire_sign = "s";
		}
		else {
			v_wire_sign = " ";
			c_wire_sign = "UInt(";
			prp_wire_sign = "u";
		}

		v->log("  wire [" + STR(current_width-1) + ":0] y" + STR(i) + "_w;\n");
		c->log("	val y" + STR(i) + " = Wire(" + c_wire_sign + STR(current_width) + ".W))\n");
		//pyrope always has signed IO, so we need to create wires that represent the unsigned IO verilog/chisel uses
		p->log("\na" + STR(i) + ".__" + prp_wire_sign + "bits = " + STR(current_width) + "\n");
		p->log("a" + STR(i) + " = $io_a" + STR(i) + "\n");
		p->log("y" + STR(i) + ".__" + prp_wire_sign + "bits = " + STR(current_width) + "\n");
	}
	dumpLogs();
}

// Creates a Chisel based ROM from its VecInit function, with UInt elements
// ROM defaults any unknown addr values to the 0 element in the vector
void Circuit::createROM() {
	int rom_addr_size = inputs;
	rom_addr_size |= rom_addr_size >> 1;   // Divide by 2^k for consecutive doublings of k up to 32,
	rom_addr_size |= rom_addr_size >> 2;   // and then or the results.
	rom_addr_size |= rom_addr_size >> 4;
	rom_addr_size |= rom_addr_size >> 8;
	rom_addr_size |= rom_addr_size >> 16;
	rom_addr_size -= rom_addr_size >> 1;

	v->log("\nwire rom_addr [" + STR(rom_addr_size) + ":0] = ");
	c->log("\nval rom_addr = Wire(UInt(" + STR(rom_addr_size + 1) + ".W))");

	functionGen(rom_addr_size+1, 3, 0, 0, 1, 0, 0, 0);

	// Due to verilog ROM and chisel ROM specifying first two elements in different orders we must precompute
	int elm1 = num_less_than(bit_max);
	int elm2 = num_less_than(bit_max);

	v->log(";\n");
	c->log("\nval rom = VecInit(" + STR(elm1) + ".U, " + STR(elm2) + ".U");
	v->log("wire [" + STR(bit_max) + ":0] _ROM_1 = " + STR(rom_addr_size) + "'h1 == rom_addr ? " + STR(bit_max+1) + "'h" + STR(elm2) + " : " + STR(bit_max+1) + "'h" + STR(elm1) + ";\n");

	for (int i = 2; i <= bit_max; i++) {
		v->log("wire [" + STR(bit_max) + ":0] _ROM_" + STR(i) + " = " + STR(rom_addr_size) + "'h" + STR(i) + " == rom_addr ? ");
		c->log(", ");
		randomConstant(bit_max + 1, 0);
		v->log(": _ROM_" + STR(i - 1) + ";\n");
	}

	c->log(")\n");

	dumpLogs();
}

// Handles declaration of each submodule, given the previously generates x wires for their output
void Circuit::createSubmodules() {	//TO-DO FIX ME!!!
	int i,j,current_width;
	int sub_inputs = inputs/split;
	if(sub_inputs<1){
		sub_inputs=1;
	}
	int sub_bit_max = bit_max/split;
	int sub_bit_min=sub_bit_max/2;
	
	std::string sub;
	for (j = 0; j < levels+1; j++)
		sub = sub + "sub_";

	for (i = 0;i < inputs / 2; i++) {	//creates a submodule for each x wire
		v->log("\n	" + sub + name + " " + sub + "m_" + STR(i) + " (.clock(clock),\n");
		v->log("			.reset(reset),\n");

		c->log("	val " + sub + "m_" + STR(i) + " = Module(new " + sub + "randomchisel())\n");
		// Begins assigning inputs to submodules
		for (j = 0; j < sub_inputs; j++) {
			current_width = sub_bit_min+1+(j%(sub_bit_max-sub_bit_min+1));
			v->log("			.a" + STR(j) + "(");
			c->log("	" + sub + "m_" + STR(i) + ".io.a" + STR(j) + " := ");
			/*if(current_width%2){
				v->log("$signed" );
			}*/
            // XXX - budget / 2 for now
			randomInput(current_width, budget / 2, current_width%2, 1, 0, j);	//needs to know if signed inputs align or not
			/*if(current_width%2){
				c->log(".asSInt" );
			}*/
			v->log("),\n");
			c->log("\n");
		}
		// Prints output connections
		v->log("			.y_o(x" + STR(i) + "));\n");
		c->log("	x" + STR(i) + " := " + sub + "m_" + STR(i) + ".io.y\n");
	}
	dumpLogs();
}

// Does assign statements for each top level wire and connects all wires to concatenated output
void Circuit::declareOutput() {
	c->log("\n" );

	int i, current_width;
	int prp_shift_counter = 0;	//due to a lack of prp support for concat, we must shift and OR wires into the output
	std::string v_separator, c_separator, p_separator;

    bool continue_block = false;

	if (hasChild()) {
		if (constants) {
			for(i = 0; i < inputs / 2; i++) {	//assigns top level complex constant declarations
				current_width = getInputWidth(i);
				printAssignments(current_width, budget, i, current_width % 2, 1, false);
			}
		}

		c->log("\n");

		for (i = 0; i < inputs / 2; i++) {	//assigns top level wires
			current_width = getInputWidth(i);
			printAssignments(current_width, budget, i, current_width % 2, 0, false);
		}

		v->log("\n  assign y_o = {");
		c->log("\n  io.y := Cat(");

		for (i = 0; i < inputs / 2; i++) {	//creates concatenated output TO-DO: REVERSE ORDER OF WIRES PRINTED
			current_width = getInputWidth(i);

			if(i == inputs/2 - 1) {
				v_separator = "_w}";
				c_separator = ")";
			}
			else {
				v_separator = "_w,";
				c_separator = ",";
			}

			v->log("x" + STR(i) + ",");
			v->log("y" + STR(i) + v_separator);
			c->log("x" + STR(i) + "(" + STR(getChild()->output_width - 1) + ",0),");
			c->log("y" + STR(i) + "(" + STR(current_width - 1) + ",0)" + c_separator);
		}
	}
	else {
		if (constants) {
			for (i = 0; i < inputs; i++) {	//assigns top level complex constant declarations
				current_width = getInputWidth(i);
				printAssignments(current_width,budget,i,current_width%2,1, false);
			}
		}

		c->log("\n");

		for (i = 0; i < inputs; i++) {	//assigns top level wires
            bool start_block = one_out_of(2, true, false);
            if (start_block && continue_block)  // start new block
                v->log("  end\n");

            if (start_block)
                v->log("\n  always_comb begin\n");

			current_width = getInputWidth(i);
			printAssignments(current_width, budget, i, current_width%2, 0, continue_block || start_block);
            
            bool next_continue_block = (continue_block || start_block) && one_out_of(2, true, false);    // can only continue if already ongoing

            if ((!next_continue_block || (i == inputs - 1)) && (continue_block || start_block))    // predetermined end or last wire 
                v->log("  end\n");

            continue_block = next_continue_block;

            prp_shift_counter += current_width;
		}

		v->log("\n  assign y_o = {");
		c->log("\n	io.y := Cat(");
		p->log("\n %io_y =");

		for (i = inputs - 1; i >= 0; i--) {	//creates concatenated output
			current_width = getInputWidth(i);
			prp_shift_counter -= current_width;


			if (i) {
				v_separator = "_w,";
				c_separator = ",";
				p_separator = "|";

			}
			else {
				v_separator = "_w}";
				c_separator = ")";
				p_separator = " ";
			}
			v->log("y" + STR(i) + v_separator);
			c->log("y" + STR(i) + "(" + STR(current_width - 1) + ",0)" + c_separator);
			p->log(" ((y" + STR(i) + " & " + STR((1 << current_width) - 1) + ") << " + STR(prp_shift_counter) + ") " + p_separator);
		}
	}

	v->log(";" );
	v->log("\nendmodule\n");
	c->log("\n}\n" );

	dumpLogs();
}
