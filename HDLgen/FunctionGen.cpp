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
#include "FunctionGen.h"

#define XORSHIFT_SEED 87


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


// Creation functions --------------------------------------------------------

// functionGen()
// Uses recursive helper functions to create randomized functions
// Length of functions decided by budget which determines how many recursive
// iterations are allowed to occur within each function
void functionGen(FILE *v,FILE *c, int inputs, int bit_max,int width, int budget, bool _signed){
	bool invert = xorshift32()%2;
	// 3 main posiblities: concatonation, binary operation, and ternary operation
	switch(xorshift32()%3){
	//switch(1){
		case 0 :	//concat
			if(_signed){
				fprintf(v, "$signed(" );
				fprintf(c, "(");
			}
			if(invert){
				fprintf(v, "(~");
				fprintf(c, "(~");
			}
			fprintf(v, "{");
			fprintf(c, "Cat(");
			concatGen(v,c,inputs, bit_max,width,budget);	//concat always returns uints so can be simple recasted
			fprintf(v, "}");
			fprintf(c, ")");
			if(invert){
				fprintf(v, ")");
				fprintf(c, ")");
			}
			if(_signed){
				fprintf(v, ")" );
				fprintf(c, ").asSInt");
			}
			break;
		case 1 :	//binary
			binaryGen(v,c,inputs, bit_max,width,budget,_signed,invert);
			break;
		case 2 :	//ternary
		if(invert){
				fprintf(v, "(~");
				fprintf(c, "(~");
			}
			ternaryGen(v,c,inputs, bit_max,width,budget,_signed);
			if(invert){
				fprintf(v, ")");
				fprintf(c, ")");
			}
			break;
	}
}

// concatGen()
// Recursively fufills a bit width requirement through concatenating 
// randomly chosen bit widths taken from inputs and other functions
void concatGen(FILE *v,FILE *c, int inputs,  int bit_max,int width, int budget){
	budget--;
	
	if(budget==0){
		// concatonation procdeures
		randomInput(v,c,inputs,bit_max,width,0);
	}
	else{
		while(width>0){		//each iteration subtracts more from the desired width
			uint32_t sub_width = (xorshift32()%width)+1;	//number of bits to operate on 
			//switch(1){
			switch(xorshift32()%3){
			//switch(0){
				case 0 :	//concat, repeated to limit concatonations to 1 bit 
					concatGen(v,c,inputs, bit_max,sub_width, sub_width==1 ? 1 : budget);		//cant split anymore once sub_width is 1
					break;
				case 1 :	//binary
					binaryGen(v,c,inputs, bit_max,sub_width,budget,0,1);
					break;
				case 2 :	//ternary
					ternaryGen(v,c,inputs, bit_max,sub_width,budget,0);
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
void binaryGen(FILE *v,FILE *c, int inputs,  int bit_max,int width, int budget, bool _signed, bool invert){
	uint32_t op = xorshift32()%11;//roll for operator
	bool shift_sign;
	budget--;
	
	if(((op>5) && _signed && (budget>0)) || ((op==10) && (budget>0))){	//part selecting for chisel returns UInt, need to recast. verilog >>> result needs to be signed to work correctly
		if(!_signed){	//when a >>> is happening and the result is forced to be signed, that result needs to be forced to be unsigned to preserve consistency
			fprintf(v, "$unsigned(" );
			fprintf(c, "(" );
		}
		fprintf(v, "$signed");
	}
	/*else{
		if(!_signed){	
			fprintf(v, "$unsigned(" );
			fprintf(c, "(" );
		}
	}*/
	if(invert){		//invert is on the inside to keep parenthesis close, this helps with recasting the whole equation instead of just the inside
		fprintf(v, "(~");	//mainly due to >>> issues
		fprintf(c, "(~");
	}
	fprintf(v,"(");
	fprintf(c,"(");
	if(budget==0){
		// print full binary operation
		randomInput(v,c,inputs,bit_max,width,_signed);
	}
	else{	
		
		if(op==10 && (!_signed)){	//forces lhs operand to be signed to ensure signed shift
			//fprintf(v, "$signed" );
			shift_sign = 1;
		}
		else if(op==9 && _signed){	//forces lhs operand to be unsigned to ensure unsigned shift
			shift_sign = 0;
		}
		else{
			shift_sign = _signed;
		}

		//rolls whether or not to expand binary operation heirarchy
		if(xorshift32()%2){	//expands
			functionGen(v,c,inputs,bit_max,width,budget,shift_sign);
		}
		else{
			//binary operation
			randomInput(v,c,inputs,bit_max,width,shift_sign);
		}


		fprintf(v, " %s ",vlog_binary_ops[op]);
		fprintf(c, " %s ",chisl_binary_ops[op]);


		//roll for second operand
		if(xorshift32()%2){	//expands
			functionGen(v,c,inputs,bit_max,width,budget,op>7?0:_signed); 	//prevents shifting by a negative number, forces uint to be used
		}
		else{
			//binary opeartion
			randomInput(v,c,inputs,bit_max,width,op>7?0:_signed);	//prevents shifting by a negative number, forces uint to be used
		}
		
	}
	fprintf(v,")");
	fprintf(c,")");
	
	if(((op>5) && _signed && (budget>0)) || ((op==10) && (budget>0))){	//part selecting for chisel returns UInt, need to recast. verilog >>> result needs to be signed to work correctly
		if(op<=8){	//right shift doesn't extend width
			fprintf(c, width==1?"(0)":"(%d,0)",width-1);	//recasts part select
			fprintf(c, ".asSInt");
		}
		if(op==10){
			fprintf(c, ".asSInt");	//sets as signed when a signed right shift is needed
		}
		
		if(!_signed){	//when a >>> is happening and the result is forced to be signed, that result needs to be forced to be unsigned to preserve consistency
			fprintf(v, ")" );
			fprintf(c, ").asUInt" );
		}
		
	}
	if(invert){
		fprintf(v, ")" );
		fprintf(c, ")" );
	}
	/*else{
		
		if(!_signed){	
			fprintf(v, ")" );
			fprintf(c, ").asUInt" );
		}
	}*/
	
	
}

// ternaryGen()
// Recursively fufills a bit width requirement through a ternary opeartion
// where the results are the necessary bit width
void ternaryGen(FILE *v, FILE *c,int inputs,  int bit_max,int width, int budget,bool _signed){
	
	budget--;
	fprintf(v,"(");
	fprintf(c,"(");
	if(budget==0){
		//print entire ternary operation
		fprintf(c, "Mux(" );
		randomInput(v,c,inputs,bit_max,1,0);
		fprintf(v, "?" );
		fprintf(c, ".asBool," );
		randomInput(v,c,inputs,bit_max,width,_signed);
		fprintf(v, ":");
		fprintf(c, "," );
		randomInput(v,c,inputs,bit_max,width,_signed);
		fprintf(c, ")" );
	}
	else{
		fprintf(c, "Mux(" );
		//rolls for condition, should stick to boolean (single bit)
		if(xorshift32()%2){
			functionGen(v,c,inputs,bit_max,1,budget,0);
		}
		else{
			// Request single bit from randomInput
			randomInput(v,c,inputs,bit_max,1,0);
		}
		fprintf(v, "?" );
		fprintf(c, ".asBool," );
		
		//rolls for first =true output
		if(xorshift32()%2){
			functionGen(v,c,inputs,bit_max,width,budget,_signed);
		}
		else{
			//print ternary opearnd
			randomInput(v,c,inputs,bit_max,width,_signed);
		}


		fprintf(v, ":");
		fprintf(c, "," );
		// rolls for second =false output
		if(xorshift32()%2){
			functionGen(v,c,inputs,bit_max,width,budget,_signed);
		}
		else{
			//print ternary opearnd
			randomInput(v,c,inputs,bit_max,width,_signed);
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
void randomInput(FILE *v,FILE *c,int inputs, int bit_max, int width, bool _signed){
	int bit_min = bit_max/2;
	int inputchosen,input_range;
	uint32_t operationchosen;
	int width_selected,width_selected_2;
	int pos1,pos2,pos3,pos4;
	bool invert = xorshift32()%2;
	if(width > (bit_min+1)){	//needs specific input
		input_range = inputs>(bit_max-bit_min) ? bit_max+2-width : bit_min+1+inputs-width;		//when there are less inputs than possible bit width combinations
		width_selected = width + (input_range==0 ? 0 : xorshift32()%input_range);	//prevents % by 0 error
	}
	else{	//otherwise selects random input
		input_range = inputs>(bit_max-bit_min) ? bit_min+1 : inputs;
		width_selected = bit_min+1+(xorshift32()%(input_range));	
	}

	pos1 = width_selected-width==0 ? 0 : xorshift32()%(width_selected-width);	//prevents % by 0 error, finds small value
	if(bit_min==0){
		pos2 =pos1;
	}
	else{
		pos2 = width_selected-pos1-1==0 ? pos1+1 : (xorshift32()%(width_selected-pos1-1))+pos1+1;	//prevents % by 0 error, finds random 2nd larger position
	}
	if(width==1 && _signed){
		fprintf(v, "$signed");	//chisel automatically assigns single bits as bools
	}
	fprintf(v, "(");
	fprintf(c, "(");

	if(width==1){	//where a single bit is needed
		if(invert){
			fprintf(v, "~" );
			fprintf(c, "~" );
		}
		// Outputs randomized single bit values
		switch(xorshift32()%3){
			case 0 :	//simple selected bit print
				inputchosen = inputWidthRequest(inputs,bit_max,width_selected);
				fprintf(v, "io_a%d[%d]",inputchosen,pos1);
				fprintf(c, "io.a%d(%d)",inputchosen,pos1);
				break;
			case 1 :	//unary operation
				inputchosen = inputWidthRequest(inputs,bit_max,width_selected);
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
				inputchosen = inputWidthRequest(inputs,bit_max,width_selected);
				operationchosen = xorshift32()%8;

				// Chisel cant do logical AND/OR on nonbooleans (need only one bit)
				if(operationchosen>5){
					fprintf(v, "(io_a%d[%d]",inputchosen,pos2);
					fprintf(c, "(io.a%d(%d)",inputchosen,pos2);

					fprintf(v, "%s",vlog_logic_ops[operationchosen]);
					fprintf(c, "%s",chisl_logic_ops[operationchosen] );


					inputchosen = inputWidthRequest(inputs,bit_max,width_selected);
					fprintf(v, "io_a%d[%d])",inputchosen,pos1 );
					fprintf(c, "io.a%d(%d))",inputchosen,pos1);
				}
				else{
					//Have to redo random input operations to find a second random input that is still valid as it depends on the first
					if(pos2-pos1+1 > (bit_min+1)){	//needs specific input
						input_range = inputs>(bit_max-bit_min) ? bit_max+2-(pos2-pos1+1) : bit_min+1+inputs-(pos2-pos1+1);		//when there are less inputs than possible bit width combinations
						width_selected_2 = pos2-pos1+1 + (bit_max+1-pos2+pos1==0 ? 0 : xorshift32()%input_range);	//prevents % by 0 error
					}
					else{	//otherwise selects random input
						input_range = inputs>(bit_max-bit_min) ? bit_min+1 : inputs;		//when there are less inputs than possible bit width combinations
						width_selected_2 = (bit_min+1)+(bit_min+1==0 ? 0 : xorshift32()%input_range);	//prevents % by 0 error
					}
					pos3 = width_selected_2-pos2+pos1-1==0 ? 0 : xorshift32()%(width_selected_2-pos2+pos1-1);	//prevents % by 0 error
					pos4 = pos3 + pos2-pos1;
					
					
					fprintf(v, "(io_a%d[%d:%d]",inputchosen,pos2,pos1);
					fprintf(c, "(io.a%d(%d,%d)",inputchosen,pos2,pos1);

					fprintf(v, "%s",vlog_logic_ops[operationchosen]);
					fprintf(c, "%s",chisl_logic_ops[operationchosen] );


					inputchosen = inputWidthRequest(inputs,bit_max,width_selected_2);
					fprintf(v, "io_a%d[%d:%d])",inputchosen,pos4,pos3 );
					fprintf(c, "io.a%d(%d,%d))",inputchosen,pos4,pos3);
				}
				break;
		}

	}
	else if((width > bit_min) && _signed){	
		if(xorshift32()%4){	//directly prints signed input, to avoid recasts and maximize signed usage
			if(invert){
				fprintf(v, "~" );
				fprintf(c, "~" );
			}
			inputchosen = inputWidthRequest(inputs,bit_max,width);
			fprintf(v, "io_a%d",inputchosen);
			fprintf(c, "io.a%d",inputchosen);
		}
		else{	//otherwise recasts randomly chosen input part select, given a low chance for more usage of natively signed inputs
			inputchosen = inputWidthRequest(inputs,bit_max,width_selected);
			fprintf(v, "%s(%sio_a%d[%d:%d])",_signed?"$signed":"",invert?"~":"",inputchosen,pos1+width-1,pos1);
			fprintf(c, "(%sio.a%d(%d,%d))%s",invert?"~":"",inputchosen,pos1+width-1,pos1,_signed?".asSInt":"");
		}
	}
	else {	
		if(invert){
			fprintf(v, "~" );
			fprintf(c, "~" );
		}
		inputchosen = inputWidthRequest(inputs,bit_max,width_selected);
		fprintf(v, "io_a%d[%d:%d]",inputchosen,pos1+width-1,pos1);
		fprintf(c, "io.a%d(%d,%d)", inputchosen,pos1+width-1,pos1);
	}
	
	fprintf(v, ")");
	fprintf(c, ")");
	if(width==1){
		fprintf(c, ".as%cInt",_signed?'S':'U' );	//chisel automatically assigns single bits as bools
	}
}

// 

// inputWidthRequest(), helper function to randomInput()
// Returns a random input variable based on
// needed width specified, variable inferred based on how many
// inputs exist in the circuit
int inputWidthRequest(int inputs, int bit_max, int width){	
	int bit_min = bit_max/2;
	int first_occurence = width-1-bit_min;	//name of first occurence of input with width
	int range = bit_max-bit_min+1;			//range of possible bit widths
	int instances = (inputs-1)/(first_occurence+range);	//how many inputs of a bit width exist past the first
	return first_occurence + range*(xorshift32()%(instances+1));	//prevents % by 0 error
}
