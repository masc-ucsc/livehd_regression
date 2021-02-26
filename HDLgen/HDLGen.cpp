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
#define INPUT_LIMIT 10
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

const char *vlog_binary_ops[] = {	//same as chisel??
	"&",	//00
	"|",	//01
	"^",	//02
	"*",	//03
	"/",	//04
	"%",	//05
	"+",	//06
	"-",	//07
	"<<",	//08
	">>",	//09
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
// Returns number of inputs created for FILE f
int init_IO(FILE *f){
	int inputs = declareModule(f);	
	splitOutput(f, inputs);
	return inputs;
}

// declareModule(), helper to init_IO()
// Prints verilog standard module declaration to file
// Randomly creates and returns amount of input variables to be used
int declareModule(FILE *f){
	// Randomly creates number of inputs
	uint32_t inputs = xorshift32(XORSHIFT_SEED) % INPUT_LIMIT;	
	inputs = ((inputs > INPUT_MIN) ? inputs : inputs + INPUT_MIN);
	int output_width=0;
	fprintf(f,"module random_verilog(");				//first line
	// Gnereates width of each delcared input, output width will be the input width sum
	output_width = createIO(f,1,inputs);
	fprintf(f, "\n	output [%d:0] y);\n",output_width-1);
	return inputs;
}

// splitOutput, helper to init_IO()
// Same function as declareModule(), except it declares parts
// of output wire
void splitOutput(FILE *f, int inputs){
	createIO(f, 0,inputs);	//prints to file split parts of output wire y
	fprintf(f, "\n	assign y = {");
	for(int i=0;i<inputs-1;i++){
		fprintf(f, "y%d,",i);
	}
	fprintf(f, "y%d};\n",inputs-1);
}

// createIO(), helper to delcareModule() and splitOutput()
// Prints to file either declarations of input or output wires based on it input is true
// Creates number of instances in accordance with INPUT/BIT rules
// Returns total width of sum of each instance created
int createIO(FILE *f, bool input, int instances){
	const char* io = input ? "input" : "wire";
	char var = input ? 'a' : 'y';
	int width=0;
	int j;
	for(int i=BIT_MIN;(i<=BIT_MAX)&&(i-BIT_MIN<instances);i++){
		fprintf(f, "\n	%s [%d:0]",io,i);
		for(j=i-BIT_MIN;j<instances-(BIT_MAX-BIT_MIN+1);j+=(BIT_MAX-BIT_MIN+1)){
			fprintf(f, " %c%d,",var,j);
			width+=i+1;
		}
		fprintf(f, " %c%d%c",var,j,input ? ',' : ';');
		width+=i+1;
	}
	return width;
}

// printVerilogOutput
// Does assign statements for verilog file for the output of the module
void printVerilogOutput(FILE *f,int inputs,int budget,uint32_t seed=0){
	for(int i=0;i<inputs;i++){
		fprintf(f, "\n	assign y%d = ",i);
		functionGen(f,inputs,(BIT_MIN+1)+(i%(BIT_MAX-BIT_MIN+1)),budget,seed);
		fprintf(f, ";");
	}
}

// endFile()
// Prints closing statement of each file
void endFile(FILE *f){
	fprintf(f, "\nendmodule");
}
// Creation functions --------------------------------------------------------

// functionGen()
// Uses recursive helper functions to create randomized functions
// Length of functions decided by budget which determines how many recursive
// iterations are allowed to occur within each function
void functionGen(FILE *f, int inputs, int width, int budget, uint32_t seed=0){
	// 3 main posiblities: concatonation, binary operation, and ternary operation
	uint32_t random = xorshift32(seed-budget);
	//switch(1){
	switch(random%3){
		case 0 :	//concat
			fprintf(f, "{");
			concatGen(f,inputs, width,budget,xorshift32(budget+width*seed));
			fprintf(f, "}");
			break;
		case 1 :	//binary
			
			binaryGen(f,inputs, width,budget,xorshift32(seed-width*inputs));
			break;
		case 2 :	//ternary
			ternaryGen(f,inputs, width,budget,xorshift32(seed*inputs+budget));
			break;
	}
}

// concatGen()
// Recursively fufills a bit width requirement through concatenating 
// randomly chosen bit widths taken from inputs and other functions
void concatGen(FILE *f, int inputs, int width, int budget, uint32_t seed=0){
	budget--;
	
	if(budget==0){
		// concatonation procdeures
		//fprintf(f, "concat_bits_%d",width);
		randomInput(f,inputs,width,seed);
	}
	else{
		while(width>0){		//each iteration subtracts more from the desired width
			uint32_t random = xorshift32(seed+budget);	
			uint32_t sub_width = (xorshift32(random+seed-budget)%width)+1;	//number of bits to operate on 
			//switch(1){
			switch(xorshift32(random*3)%3){
				case 0 :	//concat, repeated to limit concatonations to 1 bit 
					concatGen(f,inputs, sub_width, sub_width==1 ? 1 : budget,xorshift32(budget+width*seed));		//cant split anymore once sub_width is 1
					break;
				case 1 :	//binary
					binaryGen(f,inputs, sub_width,budget,xorshift32(seed-width*inputs));
					break;
				case 2 :	//ternary
					ternaryGen(f,inputs, sub_width,budget,xorshift32(seed*inputs+budget));
					break;
			}
		if((width-sub_width)>0){
			fprintf(f, ",");
		}
		width-=sub_width;
		}
	}
	
}


// binaryGen()
// Recursively fufills a bit width requirement through binary operations
// that output the necessary bit width
void binaryGen(FILE *f, int inputs, int width, int budget, uint32_t seed=0){
	budget--;
	fprintf(f,"(");
	if(budget==0){
		// print full binary operation
		//fprintf(f,"binary_bits_%d",width);
		randomInput(f,inputs,width,seed);
	}
	else{	
		//rolls whether or not to expand binary operation heirarchy
		uint32_t random = xorshift32(seed-budget*width);		//roll for first operand
		if(random%2){	//expands
			functionGen(f,inputs,width,budget,xorshift32(random+budget));
		}
		else{
			//binary operation
			//fprintf(f,"binary_bits_%d",width);
			randomInput(f,inputs,width,seed);
		}

		//roll for operator
		//fprintf(f," X ");
		fprintf(f, " %s ",vlog_binary_ops[xorshift32(random*random)%10]);

		//roll for second operand
		random = xorshift32(random-budget+inputs);		//roll for first operand
		if(random%2){	//expands
			functionGen(f,inputs,width,budget,xorshift32(random*budget-17));
		}
		else{
			//binary opeartion
			//fprintf(f,"binary_bits_%d",width);
			randomInput(f,inputs,width,seed);
		}
	}
	fprintf(f,")");
}

// ternaryGen()
// Recursively fufills a bit width requirement through a ternary opeartion
// where the results are the necessary bit width
// NOTE: OTHER LANGUAGES (SUCH AS CHISEL) HAVE DIFFERNET SYNTAX FOR TERNARY OPS
// EACH CONSTANT PRINT STATEMENT SHOULD BE SUPPLEMENTED FOR EACH INDIVIDUAL FILE
// AND ITS RESPECTIVE LANGUAGE
void ternaryGen(FILE *f, int inputs, int width, int budget, uint32_t seed=0){
	budget--;
	fprintf(f,"(");
	uint32_t random = xorshift32(seed*budget*width);
	if(budget==0){
		//print entire ternary operation
		//fprintf(f,"ternary_select_bit");
		randomInput(f,inputs,1,seed);
		fprintf(f, "?" );
		//fprintf(f, "ternary_bits_%d",width );
		randomInput(f,inputs,width,seed);
		fprintf(f, ":");
		//fprintf(f, "ternary_bits_%d",width );
		randomInput(f,inputs,width,seed);
	}
	else{
		//rolls for condition, should stick to boolean (single bit)
		if(random%2){
			functionGen(f,inputs,1,budget,xorshift32(random*budget));
		}
		else{
			// Request single bit from randomInput
			//fprintf(f, "ternary_select_bit");
			randomInput(f,inputs,1,seed);
		}

		fprintf(f, "?" );
		//rolls for first =true output
		random = xorshift32(random*inputs-budget);
		if(random%2){
			functionGen(f,inputs,width,budget,xorshift32(random*random));
		}
		else{
			//print ternary opearnd
			//fprintf(f, "ternary_bits_%d",width );
			randomInput(f,inputs,width,seed);
		}

		fprintf(f, ":");
		// rolls for second =false output
		random = xorshift32(seed+random*inputs);
		if(random%2){
			functionGen(f,inputs,width,budget,xorshift32(random+inputs));
		}
		else{
			//print ternary opearnd
			//fprintf(f, "ternary_bits_%d",width );
			randomInput(f,inputs,width,seed);
		}

	}
	fprintf(f, ")");
}

// Helper functions ----------------------------------------------------------

// randomInput()
// Prints a random part or whole input depending on
// the width requested, depends on inputWidthRequest()
// Also acts as a single bit random generator, using logical
// and unary operators to produce values
// NOTE: EACH OF THE PRINT STATEMENTS HERE SHOULD BE REPLACED WITH FUNCTIONS
// THAT PRINT THEM EACH IN THEIR RESPECTIVE LANGUAGES/FILES
void randomInput(FILE *f,int inputs, int width, uint32_t seed=0){
	int width_selected,width_selected_2;
	int pos1,pos2,pos3,pos4;
	uint32_t random = xorshift32(seed-width);
	if(width > (BIT_MIN+1)){	//needs specific input
		width_selected = width + (BIT_MAX+2-width==0 ? 0 : random%(BIT_MAX+2-width));	//prevents % by 0 error
	}
	else{	//otherwise selects random input
		width_selected = (BIT_MIN+1)+(BIT_MIN+1==0 ? 0 : random%(BIT_MIN+1));	//prevents % by 0 error
	}
	pos1 = width_selected-width==0 ? 0 : random%(width_selected-width);	//prevents % by 0 error, finds small value
	pos2 = width_selected-pos1==0 ? pos1+1 : (xorshift32(seed-random)%(width_selected-pos1))+pos1;	//prevents % by 0 error, finds random 2nd larger position

	if(xorshift32(random*random)%2){	//to invert or not
			fprintf(f, "~");
	}
	if(width==1){	//where a single bit is needed
		random = xorshift32(random*seed);
		// Outputs randomized single bit values
		switch(xorshift32(random)%3){
			case 0 :	//simple selected bit print
				fprintf(f, "a%d[%d] ",inputWidthRequest(inputs,width_selected,seed),pos1);
				break;
			case 1 :	//unary operation
				fprintf(f,"(%sa%d[%d:%d]) ",vlog_unary_ops[random%4],inputWidthRequest(inputs,width_selected,seed),pos2,pos1);
				break;
			case 2 :	//logical operation
				//Have to redo random input operations to find a second random input that is still valid as it depends on the first
				if(pos2-pos1+1 > (BIT_MIN+1)){	//needs specific input
					width_selected_2 = pos2-pos1+1 + (BIT_MAX+1-pos2+pos1==0 ? 0 : random%(BIT_MAX+1-pos2+pos1));	//prevents % by 0 error
				}
				else{	//otherwise selects random input
					width_selected_2 = (BIT_MIN+1)+(BIT_MIN+1==0 ? 0 : random%(BIT_MIN+1));	//prevents % by 0 error
				}
				pos3 = width_selected_2-pos2+pos1-1==0 ? 0 : random%(width_selected_2-pos2+pos1-1);	//prevents % by 0 error
				pos4 = pos3 + pos2-pos1;
				//pos4 = width_selected_2-pos3==0 ? pos3 : (xorshift32(seed-random)%(width_selected_2-pos3))+pos3;	//prevents % by 0 error, finds random 4th position
				random = xorshift32(random*random-inputs);
				fprintf(f, "(a%d[%d:%d]%sa%d[%d:%d]) ",inputWidthRequest(inputs,width_selected,seed),pos2,pos1,vlog_logic_ops[random%8],
					inputWidthRequest(inputs,width_selected_2,seed*seed),pos4,pos3);
				break;
		}
	}
	else {	//randomly swaps direction of bus
		fprintf(f, "a%d[%d:%d] ",inputWidthRequest(inputs,width_selected,seed),pos1+width-1,pos1);
	}
	
}

// inputWidthRequest(), helper function to randomInput()
// Returns a random input variable based on
// needed width specified, variable inferred based on how many
// inputs exist in the circuit
int inputWidthRequest(int inputs, int width, uint32_t seed=0){	
	int first_occurence = width-1-BIT_MIN;	//name of first occurence of input with width
	int range = BIT_MAX-BIT_MIN+1;			//range of possible bit widths
	int instances = (inputs-1)/(first_occurence+range);	//how many inputs of a bit width exist past the first
	return first_occurence + range*(instances ? xorshift32(seed)%instances : 0);	//prevents % by 0 error
}
