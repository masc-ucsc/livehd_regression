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
	"-",	//04
	"/",	//05
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
	"-",	//04
	"/",	//05
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
void functionGen(FILE *v,FILE *c, int inputs, int bit_max,int width, int budget, bool _signed, bool force_concat, bool allow_invert, bool no_mult){
	bool invert = xorshift32()%(1+allow_invert);
	// 3 main posiblities: concatonation, binary operation, and ternary operation
	switch(xorshift32()%3){
	//switch(1){
		case 0 :	//concat
			if(_signed){
				fprintf(v, "$signed(" );
			}
			if(invert){
				fprintf(v, "~");
				fprintf(c, "~");
			}
			fprintf(v, "{");
			fprintf(c, "Cat(");
			concatGen(v,c,inputs, bit_max,width,budget,force_concat,no_mult);	//concat always returns uints so can be simple recasted
			fprintf(v, "}");
			fprintf(c, ")");
			if(_signed){
				fprintf(v, ")" );
				fprintf(c, ".asSInt");
			}
			else{
				fprintf(c, ".asUInt");
			}
			break;
		case 1 :	//binary
			binaryGen(v,c,inputs, bit_max,width,budget,_signed,invert, force_concat,no_mult);
			break;
		case 2 :	//ternary
		if(invert){
				fprintf(v, "(~");
				fprintf(c, "(~");
			}
			ternaryGen(v,c,inputs, bit_max,width,budget,_signed,allow_invert,no_mult);
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
void concatGen(FILE *v,FILE *c, int inputs,  int bit_max,int width, int budget,bool force_concat, bool no_mult){
	budget--;
	
	if(budget==0){
		// concatonation procdeures
		randomInput(v,c,inputs,bit_max,width,0,1);
	}
	else{
		while(width>0){		//each iteration subtracts more from the desired width
			uint32_t sub_width = (xorshift32()%width)+1;	//number of bits to operate on 
			//switch(1){
			switch(xorshift32()%3){
			//switch(0){
				case 0 :	//concat, repeated to limit concatonations to 1 bit 
					concatGen(v,c,inputs, bit_max,sub_width, sub_width==1 ? 1 : budget,force_concat,no_mult);		//cant split anymore once sub_width is 1
					break;
				case 1 :	//binary
					binaryGen(v,c,inputs, bit_max,sub_width,budget,0,1,force_concat,no_mult);
					break;
				case 2 :	//ternary
					ternaryGen(v,c,inputs, bit_max,sub_width,budget,0,1,no_mult);
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
void binaryGen(FILE *v,FILE *c, int inputs,  int bit_max,int width, int budget, bool _signed, bool invert, bool force_concat, bool no_mult){
	uint32_t op = xorshift32()%11;//roll for operator, doesn't do signed right shifts for single bits
	if(op>2){	//prevents mixing mult with other arithmetic ops
		no_mult =1;
	}
	bool shift_sign;
	bool allow_invert =1;	//prevents further operations from being inverted due to issues with inverted operands in arithmetic ops
	int width_1,width_2;	//replace the working width with something new to expand for proper signed mult/div ops
	budget--;
	if(width==1 && ((op==5 )|| (op==6 ))){	//division and mulitplication output more than 1 bit, need to force to another operation
		op = 3 + (op==6);	//sets to either + or -
	}
	if(op>2 && op<8){	//prevents arithmetic operations from taking inverted operands
		//allow_invert =0;
	}
	//Muxes force their second inputs to be unsigned if their first is unsigned, this interferes with signed right shifts, concatenation breaks it away from this
	if((op==10) && (force_concat) && (width==1) && (budget>0)){	//single bit width SRS cannot be forced to be concated them selves, better to just request a single bit
		randomInput(v,c,inputs,bit_max,width,_signed,allow_invert);
	}
	else{	//otherwise cuts off by a single bit
		if((op==10) && (force_concat) && (budget>0)){	//in this special case, the width of the SRS will be reduced by 1 and coancated with a 1'b0 to isolate it and maintain signness
			fprintf(v, "{$signed(1'b0),");
			fprintf(c, "Cat(0.S,");
			width--;
		}
		if(((op>6) && _signed && (budget>0)) && (op<9)){	//part selecting for chisel returns UInt, need to recast. Applicable only for % and <<
			fprintf(v, "$signed");
			fprintf(c, "(");
		}
		else if((_signed && op==9)){	//since URS has an unsigned operand, the result of the statement has to be set to be signed to match the output
			if(invert){		//~ has to come before $signed in verilog
				fprintf(v, "(~");
			}
			fprintf(v, "$signed");
			fprintf(c, "(");	//sets .asSInt
		}
		else if((!_signed && op==10)){
			fprintf(c, "(");	//sets .asUInt
		}
		

		if(invert){		//invert is on the inside to keep parenthesis close, this helps with recasting the whole equation instead of just the inside
			if(!(_signed && (op==9))){
				fprintf(v, "(~");	//mainly due to >>> issues
			}
			fprintf(c, "~");
		}
		if(op==10){
			fprintf(v, "$signed");
			//fprintf(c, "(");
		}

		fprintf(v,"(");
		fprintf(c,"(");
		if(budget==0){
			// print full binary operation
			randomInput(v,c,inputs,bit_max,width,_signed,allow_invert);
		}
		else{	
			// Mult and Div modifiers
			if(op==6 && no_mult){	//Mult doesn't play well with others, prevents from mixing any othe arithmetic/shifts with a mult op
				op = 0;	//mult isnt allowed
			}
			if(op==5 && _signed && (width>1)){	//width(Div) = width(first operand) + 1 if signed, doesn't matter for 1-bit
				width_1 = width-1;
				width_2 = width;
			}
			else if(op==6){ //width(Mult) = w(x) + w(y), doesn't matter for 1-bit, first width should always >= second width (operator associativity goes left)
				width_2 = width/2;	//splits width in half, with second operand being <= to first
				width_1 = width - width_2; //fills out remainder
			}
			else{						//otherwise width requested is controlled as per usual
				width_1 = width;
				width_2 = width;
			}

			// Right shift modifiers
			if(op==10 && (!_signed)){	//forces lhs operand to be signed to ensure signed shift
				//fprintf(v, "GOT HERE SIGNED RS FOR UNSIGNED OPERATION" );
				shift_sign = 1;
			}
			else if(op==9 && _signed){	//forces lhs operand to be unsigned to ensure unsigned shift
				shift_sign = 0;
			}
			else{
				shift_sign = _signed;
			}



			//rolls whether or not to expand binary operation heirarchy
			if(xorshift32()%(1 + (op>7 || op<3))){	//expands, prevents nested arithmetic operations, those become too confusing for yosys compiler
				functionGen(v,c,inputs,bit_max,width_1,budget,shift_sign,0,allow_invert,no_mult);
			}
			else{
				//binary operation
				randomInput(v,c,inputs,bit_max,width_1,shift_sign,allow_invert);
			}


			fprintf(v, " %s ",vlog_binary_ops[op]);
			fprintf(c, " %s ",chisl_binary_ops[op]);


			//roll for second operand
			if(xorshift32()%(1 + (op>7 || op<3))){	//expands
				functionGen(v,c,inputs,bit_max,width_2,budget,op>7?0:_signed,0, allow_invert,no_mult); 	//prevents shifting by a negative number, forces uint to be used
			}
			else{
				//binary opeartion
				randomInput(v,c,inputs,bit_max,width_2,op>7?0:_signed, allow_invert);	//prevents shifting by a negative number, forces uint to be used
			}


			
		}
		fprintf(v,")");
		fprintf(c,")");
		//if(op==10){
		//	fprintf(c, ".asSInt)");
		//}
		if(((op>6) && (budget>0)) && (op<9)){	//part selecting for chisel returns UInt, need to recast. Only applicable for % and <<
			fprintf(c, width==1?"(0)":"(%d,0)",width-1);	//recasts part select
			if(_signed){
				fprintf(c, ".asSInt)");
			}
		}
		else if(_signed && op==9){	//either casts as SInt or forces operation to be signed
			fprintf(c, ".asSInt)");	//sets .asSInt
		}
		else if(!_signed && op==10){	//since SRS operations use a signed operand, need to specify the result of the statement is unsigned
			fprintf(c, ".asUInt)");
		}
		if(invert){
			fprintf(v, ")");	//closes parenthesis
		}
		if((op==10) && (force_concat) && (budget>0)){	//in this special case, the width of the SRS will be reduced by 1 and coancated with a 1'b0 to isolate it and maintain signness
			fprintf(v, "}");
			fprintf(c, ")");
			width--;
		}
	}

	
	
	
}

// ternaryGen()
// Recursively fufills a bit width requirement through a ternary opeartion
// where the results are the necessary bit width
void ternaryGen(FILE *v, FILE *c,int inputs,  int bit_max,int width, int budget,bool _signed, bool allow_invert, bool no_mult){
	
	budget--;
	fprintf(v,"(");
	fprintf(c,"(");
	if(budget==0){
		//print entire ternary operation
		fprintf(c, "Mux(" );
		randomInput(v,c,inputs,bit_max,1,0, allow_invert);
		fprintf(v, "?" );
		fprintf(c, ".asBool," );
		randomInput(v,c,inputs,bit_max,width,_signed, allow_invert);
		fprintf(v, ":");
		fprintf(c, "," );
		randomInput(v,c,inputs,bit_max,width,_signed, allow_invert);
		fprintf(c, ")" );
	}
	else{
		fprintf(c, "Mux(" );
		//rolls for condition, should stick to boolean (single bit)
		if(xorshift32()%2){
			functionGen(v,c,inputs,bit_max,1,budget,0,0, 1,0);
		}
		else{
			// Request single bit from randomInput
			randomInput(v,c,inputs,bit_max,1,0, 1);
		}
		fprintf(v, "?" );
		fprintf(c, ".asBool," );
		
		//rolls for first =true output
		if(xorshift32()%2){
			functionGen(v,c,inputs,bit_max,width,budget,_signed,0, allow_invert,no_mult);
		}
		else{
			//print ternary opearnd
			randomInput(v,c,inputs,bit_max,width,_signed, allow_invert);
		}


		fprintf(v, ":");
		fprintf(c, "," );
		// rolls for second =false output
		if(xorshift32()%2){
			functionGen(v,c,inputs,bit_max,width,budget,_signed,!_signed, allow_invert,no_mult);	//forces concatenation for signed right shift to preserve signness
		}
		else{
			//print ternary opearnd
			randomInput(v,c,inputs,bit_max,width,_signed, allow_invert);
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
void randomInput(FILE *v,FILE *c,int inputs, int bit_max, int width, bool _signed, bool allow_invert){
	int bit_min = bit_max/2;
	int inputchosen,input_range;
	uint32_t operationchosen;
	int width_selected,width_selected_2;
	int pos1,pos2,pos3,pos4;
	bool invert = xorshift32()%(1+allow_invert);
	bool force_signed =0;	//Used for signed right shifts, to force otherwise unsigned parts/inputs to be signed
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
	if(((width==1) || !(width%2) || (width<=bit_min)) && _signed){	//right shifts may sometimes request values that aren't naturally signed to be signed, need recast if this is the case
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
		if(xorshift32()%2){	//directly prints signed input, to avoid recasts and maximize signed usage
			if(invert){
				fprintf(v, "~" );
				fprintf(c, "~" );
			}
			inputchosen = inputWidthRequest(inputs,bit_max,width);
			fprintf(v, "io_a%d",inputchosen);
			fprintf(c, "io.a%d",inputchosen);
			if(_signed && (!(width%2))){	//for when a signed right shift requests a signed value, but an incorrectly signed value is returned
			force_signed=1;
		}	
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
		if(_signed){	//for when a signed right shift requests a signed value, but an part select is returned
			force_signed=1;
		}	
	}
	
	fprintf(v, ")");
	fprintf(c, ")");
	if(width==1 || force_signed){
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
