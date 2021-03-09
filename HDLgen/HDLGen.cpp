//-----------------------------------------------------------------------------
// Mark Zakharov
// HDLGen.cpp
// Holds function definitions for those declared in HDLGen.h
//
// To maintain consistency, the width length of each input will be the
// [BIT_MIN, BIT_LIMIT) based on the order of them being generated. That is an
// inclusive minimum and an exclusive maximum!
// Ex: BIT_LIMIT = 5, BIT_MIN = 2
// possible inputs generated: a0 [2:0], a1 [3:0], a2[4:0], a3[2:0]
//-----------------------------------------------------------------------------
#include <string.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <string>
#include "HDLGen.h"

#define XORSHIFT_SEED 87

#define BIT_MAX 10
#define BIT_MIN BIT_MAX/2
#define INPUT_LIMIT 20
#define INPUT_MIN INPUT_LIMIT/2

using namespace std;

// Operations -----------------------------------------------------------------
const char *vlog_logic_ops[] = {
	">",	// 00
	">=",	// 01
	"<",	// 02
	"<=",	// 03
	"==",	// 04
	"!=",	// 05
	"&&",	// 06
	"||",	// 07
};

const char *chisl_logic_ops[] = {
	">",	// 00
	">=",	// 01
	"<",	// 02
	"<=",	// 03
	"===",	// 04
	"=/=",	// 05
	"&&",	// 06
	"||",	// 07
};

const char *vlog_unary_ops[] = {
	"!",	// 00
	"&",	// 01
	"|",	// 02
	"^",	// 03
};

const char *chisl_unary_ops[] = {
	"!",	//00
	".andR",//01
	".orR",	//02
	".xorR",//03
};

const char *vlog_binary_ops[] = {	
	"&",	//00
	"|",	//01
	"^",	//02
	"+",	//03
	"/",	//04
	"-",	//05
	"*",	//06
	"%",	//07
	"<<",	//08
	">>",	//09
	">>>",	//10
};

const char *chisl_binary_ops[] = {	
	"&",	//00
	"|",	//01
	"^",	//02
	"+",	//03
	"/",	//04
	"-",	//05
	"*",	//06
	"%",	//07
	"<<",	//08
	">>",	//09
	">>",	//10-signed shift
};

// Psuedo-Random Number Generation --------------------------------------------

// xorshift32()
// Taken from vlogHammer which took it from wikipedia article on
// xorshift rng, extermely efficient implementation of pseudo-rng,
// avoids use of rand()
uint32_t xorshift32(uint32_t seed=0) {
	static uint32_t x = 314159265 + XORSHIFT_SEED;
	if (seed) {
		x = (seed << 16) + XORSHIFT_SEED;
		for (int i = 0; i < 10; i++)
			xorshift32();
	}
	x ^= x << 13;
	x ^= x >> 17;
	x ^= x << 5;
	return x;
}


// Declaration functions ------------------------------------------------------

// init_IO()
// Creates input and output for module referenced by file
// Returns number of inputs created for FILEs v and c, unless specified
// If 0 inputs is passed in, a random amound of inputs is created
int init_IO(FILE *v,FILE *c,uint32_t inputs,uint32_t seed=0){
	// Creates verilog file
	inputs = declareModule(v,c,inputs,seed);	
	verilog_splitOutput(v, inputs);
	return inputs;
}

// declareModule(), helper to init_IO()
// Prints verilog standard module declaration to files
// Randomly creates and returns amount of input variables to be used
// If 0 inputs is passed in, a random amound of inputs is created
int declareModule(FILE *v,FILE *c,uint32_t inputs,uint32_t seed=0){
	// Verilog file creation
	if(inputs){
		//do nothing, use specified amonut of inputs
	}
	else{
		// Randomly creates number of inputs
		inputs = xorshift32(seed) % INPUT_LIMIT;	
		inputs = ((inputs > INPUT_MIN) ? inputs : inputs + INPUT_MIN);
	}
	int output_width=0;
	fprintf(v,"module randomverilog(");				//first line
	// Gnereates width of each delcared input, output width will be the input width sum
	output_width = verilog_createIO(v,1,inputs);
	fprintf(v, "\n	output [%d:0] io_y);\n",output_width-1);

	// Chisel file creation
	fprintf(c, "package randomchisel\n");
	fprintf(c, "import chisel3._\n");		//allows scala to be compiled as chisel
	fprintf(c,"import chisel3.util._\n");	//necessary import for utils like Cat() and Mux()
	fprintf(c, "\nclass randomchisel extends Module {\n");
	fprintf(c, "	val io = IO(new Bundle {\n");
	chisel_createIO(c,1,inputs);
	fprintf(c, "		val y = Output(UInt(%d.W))\n",output_width);	//sets output as unsigned
	fprintf(c, "	})\n");
	chisel_createIO(c,0,inputs);
	return inputs;
}

// verilog_splitOutput, helper to init_IO()
// Same function as declareModule(), except it declares parts
// of output wire
void verilog_splitOutput(FILE *v, int inputs){
	// Splits verilog output 
	verilog_createIO(v, 0,inputs);	//prints to file split parts of output wire y
	fprintf(v, "\n	assign io_y = {");
	for(int i=0;i<inputs-1;i++){
		fprintf(v, "y%d,",i);
	}
	fprintf(v, "y%d};\n",inputs-1);
}

// chisel_splitOutput()
// Concatonates all of the vals that make up the output of the module
void chisel_splitOutput(FILE *c,int inputs){
	fprintf(c, "\n	io.y := Cat(");
	for(int i=0;i<inputs;i++){
		fprintf(c, "y%d(%d,0)%c",i, BIT_MIN+(i%(BIT_MAX-BIT_MIN+1)),i==inputs-1?')':',');
	}
}

// chisel_createIO()
// Prints to file either declarations of input or output vals (wires) based on if input is 1
// Creates number of instances in accordance with INPUT/BIT rules
void chisel_createIO(FILE *c,bool input,int instances){

	for(int i=0;i<instances;i++){	
		if(input){
			fprintf(c, "		val a%d = Input(%s(%d.W))\n",i,i%2?"SInt":"UInt",BIT_MIN+1+(i%(BIT_MAX-BIT_MIN+1)));	
		}
		else{
			fprintf(c, "	val y%d = Wire(%s(%d.W))\n",i,i%2?"SInt":"UInt",BIT_MIN+1+(i%(BIT_MAX-BIT_MIN+1)));
		}
	}
}

// verilog_createIO(), helper to delcareModule() and splitOutput()
// Prints to file either declarations of input or output wires based on it input is true
// Creates number of instances in accordance with INPUT/BIT rules
// Returns total width of sum of each instance created
int verilog_createIO(FILE *v, bool input, int instances){
	const char* verilog_io = input ? "input" : "wire";
	const char* verilog_var = input ? "io_a" : "y";
	int width=0;
	int j;
	if(input){	//need this for comparison to chisel, as clk and rst are implied inputs
		fprintf(v, "\n	input clock," );
		fprintf(v, "\n	input reset," );
	}
	// Formatted verilog declarations
	for(int i=BIT_MIN;(i<=BIT_MAX)&&(i-BIT_MIN<instances);i++){
		if(i%2){	//makes every other input/wire signed
			fprintf(v, "\n	%s signed [%d:0]",verilog_io,i);	//turned off signed
		}
		else{
			fprintf(v, "\n	%s [%d:0]",verilog_io,i);
		}
		for(j=i-BIT_MIN;j<instances-(BIT_MAX-BIT_MIN+1);j+=(BIT_MAX-BIT_MIN+1)){
			fprintf(v, " %s%d,",verilog_var,j);
			width+=i+1;
		}
		fprintf(v, " %s%d%c",verilog_var,j,input ? ',' : ';');
		width+=i+1;
	}
	return width;
}

// printVerilogChiselOutput()
// Does assign statements for verilog/chisel files for the output of the module
void printVerilogChiselOutput(FILE *v,FILE* c,int inputs,int budget){
	for(int i=0;i<inputs;i++){
		fprintf(v, "\n	assign y%d = ",i);
		fprintf(c, "\n	y%d := ",i);
		functionGen(v,c,inputs,(BIT_MIN+1)+(i%(BIT_MAX-BIT_MIN+1)),budget);
		if(i%2){
			fprintf(c, ".asSInt");
		}
		fprintf(v, ";");
	}
}



// endFile()
// Prints closing statement of each file
void endFile(FILE *v,FILE *c){
	fprintf(v, "\nendmodule");
	fprintf(c, "\n}" );
}
// Creation functions --------------------------------------------------------

// functionGen()
// Uses recursive helper functions to create randomized functions
// Length of functions decided by budget which determines how many recursive
// iterations are allowed to occur within each function
void functionGen(FILE *v,FILE *c, int inputs, int width, int budget){
	// 3 main posiblities: concatonation, binary operation, and ternary operation
	//switch(xorshift32()%3){
	switch(1){
		case 0 :	//concat
			fprintf(v, "{");
			fprintf(c, "Cat(");
			concatGen(v,c,inputs, width,budget);
			fprintf(v, "}");
			fprintf(c, ")");
			break;
		case 1 :	//binary
			binaryGen(v,c,inputs, width,budget);
			break;
		case 2 :	//ternary
			ternaryGen(v,c,inputs, width,budget);
			break;
	}
}

// concatGen()
// Recursively fufills a bit width requirement through concatenating 
// randomly chosen bit widths taken from inputs and other functions
void concatGen(FILE *v,FILE *c, int inputs, int width, int budget){
	budget--;
	
	if(budget==0){
		// concatonation procdeures
		randomInput(v,c,inputs,width);
	}
	else{
		while(width>0){		//each iteration subtracts more from the desired width
			uint32_t sub_width = (xorshift32()%width)+1;	//number of bits to operate on 
			//switch(1){
			//switch(xorshift32()%3){
			switch(0){
				case 0 :	//concat, repeated to limit concatonations to 1 bit 
					concatGen(v,c,inputs, sub_width, sub_width==1 ? 1 : budget);		//cant split anymore once sub_width is 1
					break;
				case 1 :	//binary
					binaryGen(v,c,inputs, sub_width,budget);
					break;
				case 2 :	//ternary
					ternaryGen(v,c,inputs, sub_width,budget);
					break;
			}
		if((width-sub_width)>0){
			fprintf(v, ",");
			fprintf(c, ",");
		}
		width-=sub_width;
		}
	}
	
}


// binaryGen()
// Recursively fufills a bit width requirement through binary operations
// that output the necessary bit width
void binaryGen(FILE *v,FILE *c, int inputs, int width, int budget){
	uint32_t op=0;
	budget--;
	fprintf(v,"(");
	fprintf(c,"(");
	if(budget==0){
		// print full binary operation
		randomInput(v,c,inputs,width);
	}
	else{	
		//roll for operator
		op = xorshift32()%11;
		if(op==10){	//righted right shift
			fprintf(v, "$signed" );
		}

		//rolls whether or not to expand binary operation heirarchy
		if(xorshift32()%2){	//expands
			functionGen(v,c,inputs,width,budget);
		}
		else{
			//binary operation
			randomInput(v,c,inputs,width);
		}

		
		if(op==10){	//signed right shift
			fprintf(c, ".asSInt");
		}
		else if(op==9){	//unsigned right shift
			fprintf(c, ".asUInt" );
		}
		fprintf(v, " %s ",vlog_binary_ops[op]);
		fprintf(c, " %s ",chisl_binary_ops[op]);

		//roll for second operand
		if(xorshift32()%2){	//expands
			functionGen(v,c,inputs,width,budget);
		}
		else{
			//binary opeartion
			randomInput(v,c,inputs,width);
		}
	}
	fprintf(v,")");
	fprintf(c,")");
	if(op>5){	//chisel *,%,>>,<< ops extend bit width, need to specify part select
		fprintf(c, width==1?"(0)":"(%d,0)",width-1);
	}
}

// ternaryGen()
// Recursively fufills a bit width requirement through a ternary opeartion
// where the results are the necessary bit width
// NOTE: OTHER LANGUAGES (SUCH AS CHISEL) HAVE DIFFERNET SYNTAX FOR TERNARY OPS
// EACH CONSTANT PRINT STATEMENT SHOULD BE SUPPLEMENTED FOR EACH INDIVIDUAL FILE
// AND ITS RESPECTIVE LANGUAGE
void ternaryGen(FILE *v, FILE *c,int inputs, int width, int budget){
	budget--;
	fprintf(v,"(");
	fprintf(c,"(");
	if(budget==0){
		//print entire ternary operation
		fprintf(c, "Mux(" );
		randomInput(v,c,inputs,1);
		fprintf(v, "?" );
		fprintf(c, ".asBool," );
		randomInput(v,c,inputs,width);
		fprintf(v, ":");
		fprintf(c, "," );
		randomInput(v,c,inputs,width);
		fprintf(c, ")" );
	}
	else{
		fprintf(c, "Mux(" );
		//rolls for condition, should stick to boolean (single bit)
		if(xorshift32()%2){
			functionGen(v,c,inputs,1,budget);
		}
		else{
			// Request single bit from randomInput
			randomInput(v,c,inputs,1);
		}
		fprintf(v, "?" );
		fprintf(c, ".asBool," );
		//rolls for first =true output
		if(xorshift32()%2){
			functionGen(v,c,inputs,width,budget);
		}
		else{
			//print ternary opearnd
			randomInput(v,c,inputs,width);
		}

		fprintf(v, ":");
		fprintf(c, "," );
		// rolls for second =false output
		if(xorshift32()%2){
			functionGen(v,c,inputs,width,budget);
		}
		else{
			//print ternary opearnd
			randomInput(v,c,inputs,width);
		}
		fprintf(c, ")" );
	}
	fprintf(v, ")");
	fprintf(c, ")");
}

// Helper functions ----------------------------------------------------------

// randomInput()
// Prints a random part or whole input depending on
// the width requested, depends on inputWidthRequest()
// Also acts as a single bit random generator, using logical
// and unary operators to produce values
// NOTE: EACH OF THE PRINT STATEMENTS HERE SHOULD BE REPLACED WITH FUNCTIONS
// THAT PRINT THEM EACH IN THEIR RESPECTIVE LANGUAGES/FILES
void randomInput(FILE *v,FILE *c,int inputs, int width){
	int inputchosen,input_range;
	uint32_t operationchosen;
	int width_selected,width_selected_2;
	int pos1,pos2,pos3,pos4;
	if(width > (BIT_MIN+1)){	//needs specific input
		input_range = inputs>(BIT_MAX-BIT_MIN) ? BIT_MAX+2-width : BIT_MIN+1+inputs-width;		//when there are less inputs than possible bit width combinations
		width_selected = width + (input_range==0 ? 0 : xorshift32()%input_range);	//prevents % by 0 error
	}
	else{	//otherwise selects random input
		input_range = inputs>(BIT_MAX-BIT_MIN) ? BIT_MIN+1 : inputs;
		width_selected = BIT_MIN+1+(xorshift32()%(input_range));	
	}

	pos1 = width_selected-width==0 ? 0 : xorshift32()%(width_selected-width);	//prevents % by 0 error, finds small value
	pos2 = width_selected-pos1-1==0 ? pos1+1 : (xorshift32()%(width_selected-pos1-1))+pos1+1;	//prevents % by 0 error, finds random 2nd larger position
	fprintf(v, "(");
	fprintf(c, "(");
	if(xorshift32()%2){	//to invert or not
			fprintf(v, "~");
			fprintf(c, "~");
	}
	if(width==1){	//where a single bit is needed
		
		// Outputs randomized single bit values
		switch(xorshift32()%3){
			case 0 :	//simple selected bit print
				inputchosen = inputWidthRequest(inputs,width_selected);
				fprintf(v, "io_a%d[%d]",inputchosen,pos1);
				fprintf(c, "io.a%d(%d)",inputchosen,pos1);
				break;
			case 1 :	//unary operation
				inputchosen = inputWidthRequest(inputs,width_selected);
				operationchosen = xorshift32()%4;
				fprintf(v,"(%sio_a%d[%d:%d])",vlog_unary_ops[operationchosen],inputchosen,pos2,pos1);
				//unary inversion isnt bit reduction
				if(operationchosen==0){
					fprintf(c,"(!io.a%d(%d,%d))",inputchosen,pos2,pos1);
				}
				else{
					fprintf(c,"(io.a%d(%d,%d)%s)",inputchosen,pos2,pos1,chisl_unary_ops[operationchosen]);
				}
				break;
			case 2 :	//logical operation
				inputchosen = inputWidthRequest(inputs,width_selected);
				operationchosen = xorshift32()%8;

				// Chisel cant do logical AND/OR on nonbooleans (need only one bit)
				if(operationchosen>5){
					fprintf(v, "(io_a%d[%d]",inputchosen,pos2);
					fprintf(c, "(io.a%d(%d)",inputchosen,pos2);

					fprintf(v, "%s",vlog_logic_ops[operationchosen]);
					fprintf(c, "%s",chisl_logic_ops[operationchosen] );


					inputchosen = inputWidthRequest(inputs,width_selected);
					fprintf(v, "io_a%d[%d])",inputchosen,pos1 );
					fprintf(c, "io.a%d(%d))",inputchosen,pos1);
				}
				else{
					//Have to redo random input operations to find a second random input that is still valid as it depends on the first
					if(pos2-pos1+1 > (BIT_MIN+1)){	//needs specific input
						width_selected_2 = pos2-pos1+1 + (BIT_MAX+1-pos2+pos1==0 ? 0 : xorshift32()%(BIT_MAX+1-pos2+pos1));	//prevents % by 0 error
					}
					else{	//otherwise selects random input
						width_selected_2 = (BIT_MIN+1)+(BIT_MIN+1==0 ? 0 : xorshift32()%(BIT_MIN+1));	//prevents % by 0 error
					}
					pos3 = width_selected_2-pos2+pos1-1==0 ? 0 : xorshift32()%(width_selected_2-pos2+pos1-1);	//prevents % by 0 error
					pos4 = pos3 + pos2-pos1;
					
					
					fprintf(v, "(io_a%d[%d:%d]",inputchosen,pos2,pos1);
					fprintf(c, "(io.a%d(%d,%d)",inputchosen,pos2,pos1);

					fprintf(v, "%s",vlog_logic_ops[operationchosen]);
					fprintf(c, "%s",chisl_logic_ops[operationchosen] );


					inputchosen = inputWidthRequest(inputs,width_selected_2);
					fprintf(v, "io_a%d[%d:%d])",inputchosen,pos4,pos3 );
					fprintf(c, "io.a%d(%d,%d))",inputchosen,pos4,pos3);
				}
				break;
		}
	}
	else {	//randomly swaps direction of bus
		inputchosen = inputWidthRequest(inputs,width_selected);
		fprintf(v, "io_a%d[%d:%d]",inputchosen,pos1+width-1,pos1);
		fprintf(c, "io.a%d(%d,%d)", inputchosen,pos1+width-1,pos1);
	}
	fprintf(v, ")");
	fprintf(c, ")");
}

// 

// inputWidthRequest(), helper function to randomInput()
// Returns a random input variable based on
// needed width specified, variable inferred based on how many
// inputs exist in the circuit
int inputWidthRequest(int inputs, int width){	
	int first_occurence = width-1-BIT_MIN;	//name of first occurence of input with width
	int range = BIT_MAX-BIT_MIN+1;			//range of possible bit widths
	int instances = (inputs-1)/(first_occurence+range);	//how many inputs of a bit width exist past the first
	return first_occurence + range*(instances ? xorshift32()%instances : 0);	//prevents % by 0 error
}
