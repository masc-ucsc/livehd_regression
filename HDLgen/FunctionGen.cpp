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
#define CHANCE_OF_CONSTANT 3
#define CHANCE_OF_WIRE 5

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

const char *prp_logic_ops[] = {
	">",	// 00
	">=",	// 01
	"<",	// 02
	"<=",	// 03
	"==",	// 04
	"!=",	// 05
	" and ",// 06
	" or ",	// 07
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

const char *prp_unary_ops[] = {
	"!",	//00
	// No others currently exist
};

const char *vlog_binary_ops[] = {	
	"&",	//00
	"|",	//01
	"^",	//02
	"+",	//03
	"-",	//04
	"*",	//05
	"/",	//06
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
	"*",	//05
	"/",	//06
	"%",	//07
	"<<",	//08
	">>",	//09
	">>",	//10-signed shift
};

const char *prp_binary_ops[] = {	
	"&",	//00
	"|",	//01
	"^",	//02
	"+",	//03
	"-",	//04
	"*",	//05
	"/",	//06
	"%",	//07
	"<<",	//08
	">>",	//09
	">>",	//10-signed shift
};

// Wire Types-------------------------------------------
const char *vlog_wire_type[] = {
	"io_a",		//module level input 00
	"y",		//module level wire 01
	"b",		//operation of literals 02
};

const char *chisl_wire_type[] = {
	"io.a",		//module level input 00
	"y",		//module level wire 01
	"b",		//operation of literals 02
};

const char *prp_wire_type[] = {
	"a",		//converted wire of module level input 00
	"y",		//module level wire 01
	"b",		//operation of literals 01
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
void functionGen(FILE *v, FILE *c, FILE *p, int inputs, int bit_max, int width, int budget, bool _signed, bool force_concat, bool allow_invert, bool no_mult, bool force_constants, bool allow_constants, int limit, bool has_child){
	bool invert = xorshift32()%(1+allow_invert);
	// 2 main posiblities: concatonation or binary operation
	// PYROPE-REMOVE
	if(1/*xorshift32()%3*/){
		binaryGen(v, c, p, inputs, bit_max, width, budget, _signed, invert, force_concat, no_mult, force_constants, allow_constants, limit, has_child);
	}		
	else{	
		if(_signed){
			fprintf(v, "$signed(" );
		}
		if(invert){
			fprintf(v, "~");
			fprintf(c, "~");
		}
		fprintf(v, "{");
		fprintf(c, "Cat(");
		concatGen(v, c, p, inputs, bit_max, width, budget, force_concat, no_mult, force_constants, allow_constants, limit, has_child);	//concat always returns uints so can be simple recasted
		fprintf(v, "}");
		fprintf(c, ")");
		if(_signed){
			fprintf(v, ")" );
			fprintf(c, ".asSInt");
		}
		else{
			fprintf(c, ".asUInt");
		}
	}	
}

// concatGen()
// Recursively fufills a bit width requirement through concatenating 
// randomly chosen bit widths taken from inputs and other functions
void concatGen(FILE *v, FILE *c, FILE *p, int inputs, int bit_max, int width, int budget, bool force_concat, bool no_mult, bool force_constants, bool allow_constants, int limit, bool has_child){
	budget--;
	
	if(budget==0){
		// concatonation procdeures
		randomInput(v, c, p, inputs, bit_max, width, 0, 1, force_constants, allow_constants, limit, has_child);
	}
	else{
		while(width>0){		//each iteration subtracts more from the desired width
			uint32_t sub_width = (xorshift32()%width)+1;	//number of bits to operate on 
			//switch(1){
			if(xorshift32()%3){
				binaryGen(v, c, p, inputs, bit_max, sub_width, budget, 0, 1, force_concat, no_mult, force_constants, allow_constants, limit, has_child);
			}
			else{
				concatGen(v, c, p, inputs, bit_max, sub_width, sub_width==1 ? 1 : budget, force_concat, no_mult, force_constants, allow_constants, limit, has_child);		//cant split anymore once sub_width is 1
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
void binaryGen(FILE *v, FILE *c, FILE *p, int inputs,  int bit_max, int width, int budget, bool _signed, bool invert, bool force_concat, bool no_mult, bool force_constants, bool allow_constants, int limit, bool has_child){
	// PYROPE-REMOVE
	//uint32_t op = xorshift32()%11;//roll for operator, doesn't do signed right shifts for single bits
	uint32_t op = xorshift32()%6;	//anything past * isnt guaranteed to work
	if(op>2){	//prevents mixing mult with other arithmetic ops
		no_mult =1;
	}
	bool shift_sign = _signed;
	bool allow_invert =1;	//prevents further operations from being inverted due to issues with inverted operands in arithmetic ops
	int width_1,width_2;	//replace the working width with something new to expand for proper signed mult/div ops
	budget--;
	if(width==1 && ((op==6 && _signed)|| (op==5 ))){	//signed division and mulitplication output (0 bits, >1 bits respectively), need to force to another operation
		op = 3 + (op==5);	//sets to either + or -
	}
	// PYROPE-REMOVE
	//Muxes force their second inputs to be unsigned if their first is unsigned, this interferes with signed right shifts, concatenation breaks it away from this
	/*if((op==10) && (force_concat) && (width==1) && (budget>0)){	//single bit width SRS cannot be forced to be concated them selves, better to just request a single bit
		randomInput(v,c,inputs,bit_max,width,_signed,allow_invert,force_constants,allow_constants,limit,has_child);
	}*/
	//else{	//otherwise cuts off by a single bit
		// PYROPE-REMOVE
		/*
		if((op==10) && (force_concat) && (budget>0)){	//in this special case, the width of the SRS will be reduced by 1 and coancated with a 1'b0 to isolate it and maintain signness
			fprintf(v, "{$signed(1'b0),");
			fprintf(c, "Cat(0.S,");
			width--;
		}*/
		if(((op>6) && _signed && (budget>0)) && (op<9)){	//part selecting for chisel returns UInt, need to recast. Applicable only for % and <<
			fprintf(v, "$signed");
			fprintf(c, "(");
		}
		// PYROPE-REMOVE
		/*
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
		*/
		

		if(invert){		//invert is on the inside to keep parenthesis close, this helps with recasting the whole equation instead of just the inside
			// PYROPE-REMOVE
			//if(!(_signed && (op==9))){
				fprintf(v, "(~");	//mainly due to >>> issues
			//}
			fprintf(c, "~");
			fprintf(p, "~");
		}
		// PYROPE-REMOVE
		/*
		if(op==10){
			fprintf(v, "$signed");
			//fprintf(c, "(");
		}*/

		fprintf(v, "(");
		fprintf(c, "(");
		fprintf(p, "(");
		if(budget==0){
			// print full binary operation
			randomInput(v, c, p, inputs, bit_max, width,_signed, allow_invert, force_constants, allow_constants, limit, has_child);
		}
		else{	
			// Mult and Div modifiers
			if(op==5 && no_mult){	//Mult doesn't play well with others, prevents from mixing any othe arithmetic/shifts with a mult op
				op = 0;	//mult isnt allowed
			}
			if(op==6 && _signed){	//width(Div) = width(first operand) + 1 if signed, doesn't matter for 1-bit
				width_1 = width-1;
				width_2 = width;
			}
			else if(op==5){ //width(Mult) = w(x) + w(y), doesn't matter for 1-bit, first width should always >= second width (operator associativity goes left)
				width_2 = width/2;	//splits width in half, with second operand being <= to first
				width_1 = width - width_2; //fills out remainder
			}
			else{						//otherwise width requested is controlled as per usual
				width_1 = width;
				width_2 = width;
			}

			// Right shift modifiers
			// PYROPE-REMOVE
			/*
			if(op==10 && (!_signed)){	//forces lhs operand to be signed to ensure signed shift
				//fprintf(v, "GOT HERE SIGNED RS FOR UNSIGNED OPERATION" );
				shift_sign = 1;
			}
			else if(op==9 && _signed){	//forces lhs operand to be unsigned to ensure unsigned shift
				shift_sign = 0;
			}*/


			//rolls whether or not to expand binary operation heirarchy
			if(xorshift32()%(1 + (op>7 || op<3))){	//expands, prevents nested arithmetic operations, those become too confusing for yosys compiler
				functionGen(v, c, p, inputs, bit_max, width_1, budget, shift_sign, 0, allow_invert, no_mult, force_constants, allow_constants, limit, has_child);
			}
			else{
				//binary operation
				randomInput(v, c, p, inputs, bit_max, width_1, shift_sign, allow_invert, force_constants, allow_constants, limit, has_child);
			}


			fprintf(v, " %s ",vlog_binary_ops[op]);
			fprintf(c, " %s ",chisl_binary_ops[op]);
			fprintf(p, " %s ",prp_binary_ops[op]);

			//roll for second operand
			if(xorshift32()%(1 + (op>7 || op<3))){	//expands
				functionGen(v, c, p, inputs, bit_max, width_2, budget, op>7?0:_signed, 0, allow_invert, no_mult, force_constants, allow_constants, limit, has_child); 	//prevents shifting by a negative number, forces uint to be used
			}
			else{
				//binary operation
				randomInput(v, c, p, inputs, bit_max, width_2, op>7?0:_signed, allow_invert, force_constants, allow_constants, limit, has_child);	//prevents shifting by a negative number, forces uint to be used
			}


			
		}
		fprintf(v, ")");
		fprintf(c, ")");
		fprintf(p, ")");
		//if(op==10){
		//	fprintf(c, ".asSInt)");
		//}
		if(((op>6) && (budget>0)) && (op<9)){	//part selecting for chisel returns UInt, need to recast. Only applicable for % and <<
			fprintf(c, width==1?"(0)":"(%d,0)",width-1);	//recasts part select
			if(_signed){
				fprintf(c, ".asSInt)");
			}
		}
		// PYROPE-REMOVE
		/*
		else if(_signed && op==9){	//either casts as SInt or forces operation to be signed
			fprintf(c, ".asSInt)");	//sets .asSInt
		}
		else if(!_signed && op==10){	//since SRS operations use a signed operand, need to specify the result of the statement is unsigned
			fprintf(c, ".asUInt)");
		}*/
		if(invert){
			fprintf(v, ")");	//closes parenthesis
		}
		// PYROPE-REMOVE
		/*
		if((op==10) && (force_concat) && (budget>0)){	//in this special case, the width of the SRS will be reduced by 1 and coancated with a 1'b0 to isolate it and maintain signness
			fprintf(v, "}");
			fprintf(c, ")");
			width--;
		}*/
	//}

	
	
	
}



// Helper functions ----------------------------------------------------------

// randomInput()
// Prints a random part or whole input depending on
// the width requested, depends on inputWidthRequest()
// Also acts as a single bit random generator, using logical
// and unary operators to produce values
void randomInput(FILE *v, FILE *c, FILE *p, int inputs, int bit_max, int width, bool _signed, bool allow_invert, bool force_constants, bool allow_constants, int limit, bool has_child){
	int bit_min = bit_max/2;
	int inputchosen,input_range;
	uint32_t operationchosen;
	int width_selected,width_selected_2;
	int pos1,pos2,pos3,pos4;
	bool invert = xorshift32()%(1+allow_invert);
	bool force_signed =0;	//Used for signed right shifts, to force otherwise unsigned parts/inputs to be signed
	bool use_constant = allow_constants?!(xorshift32()%CHANCE_OF_CONSTANT):0;	//determines if a constant or an input will be returned
	bool use_wire = use_constant?0:!(xorshift32()%CHANCE_OF_WIRE);	//if a constant isn't used, also rolls to reuse a previous wire
	int wire_type = 0;	//default is typical top level input
	if(force_constants || (xorshift32()%(1+use_constant))){	
		randomConstant(v,c,width,_signed);	//prints a random constant generated given width/signness
	}
	else {
		if(width > (bit_min+1)) {	//needs specific input
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
		fprintf(p, "(");

		inputchosen = inputWidthRequest(inputs,bit_max,width_selected);
		if(use_constant){	//if a literal wasnt printed prevously but a constant is being commanded, changes the wire type being used
			if(((inputchosen < inputs/2) && has_child) || (!has_child)){
				wire_type = 2;	//switches to literal operation wire
			}
		}
		else if(use_wire){	//if a literal wasnt used, and rolls to use a previous "y" wire
			if(inputchosen < limit){
				wire_type = 1;	//switches to previous wire
			}
		}


		if(width==1){	//where a single bit is needed
			if(invert){
				fprintf(v, "~");
				fprintf(c, "~");
				fprintf(p, "~");
			}
			// Outputs randomized single bit values
			switch(xorshift32()%3){
				case 0 :	//simple selected bit print
					//inputchosen = inputWidthRequest(inputs,bit_max,width_selected,limit);
					fprintf(v, "%s%d[%d]",vlog_wire_type[wire_type],inputchosen,pos1);
					fprintf(c, "%s%d(%d)",chisl_wire_type[wire_type],inputchosen,pos1);
					fprintf(p, "%s%d@(%d)",prp_wire_type[wire_type],inputchosen,1 << pos1);
					break;
				case 1 :	//unary operation
					// PYROPE-REMOVE
					//operationchosen = xorshift32()%4;
					operationchosen = 0;
					fprintf(v,"(%s%s%d[%d:%d])",vlog_unary_ops[operationchosen],vlog_wire_type[wire_type],inputchosen,pos2,pos1);
					//unary inversion isnt bit reduction
					if(operationchosen==0){
						fprintf(c,"(!%s%d(%d,%d))",chisl_wire_type[wire_type],inputchosen,pos2,pos1);
					}
					else{
						fprintf(c,"(%s%d(%d,%d)%s)",chisl_wire_type[wire_type],inputchosen,pos2,pos1,chisl_unary_ops[operationchosen]);
					}
					fprintf(p,"(%s(%s%d@(%d:%d)))",prp_unary_ops[operationchosen],prp_wire_type[wire_type],inputchosen,pos1,pos2);
					break;
				case 2 :	//logical operation
					operationchosen = xorshift32()%8;
					if(operationchosen == 1 || operationchosen == 3)
						operationchosen--;
					// PYROPE-EDIT: >= and <= dont work in pyrope, disable line above

					// Chisel cant do logical AND/OR on nonbooleans (need only one bit)
					// PYROPE-EDIT: CANT DO LOGICAL COMPARATORS CORRECTLY ON NON BOOLEANS
					//if(operationchosen>5){
						fprintf(v, "(%s%d[%d]",vlog_wire_type[wire_type],inputchosen,pos2);
						fprintf(c, "(%s%d(%d)",chisl_wire_type[wire_type],inputchosen,pos2);
						fprintf(p, "(%s%d@(%d)",prp_wire_type[wire_type],inputchosen,1 << pos2);

						fprintf(v, "%s",vlog_logic_ops[operationchosen]);
						fprintf(c, "%s",chisl_logic_ops[operationchosen]);
						fprintf(p, "%s",prp_logic_ops[operationchosen]);

						inputchosen = inputWidthRequest(inputs,bit_max,width_selected);
						fprintf(v, "%s%d[%d])",vlog_wire_type[0],inputchosen,pos1);
						fprintf(c, "%s%d(%d))",chisl_wire_type[0],inputchosen,pos1);
						fprintf(p, "%s%d@(%d))",prp_wire_type[0],inputchosen,1 << pos1);
					//}
					/*else{
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
						
						
						fprintf(v, "(%s%d[%d:%d]",vlog_wire_type[wire_type],inputchosen,pos2,pos1);
						fprintf(c, "(%s%d(%d,%d)",chisl_wire_type[wire_type],inputchosen,pos2,pos1);
						fprintf(p, "(%s%d@(%d:%d)",prp_wire_type[wire_type],inputchosen,pos1,pos2);

						fprintf(v, "%s",vlog_logic_ops[operationchosen]);
						fprintf(c, "%s",chisl_logic_ops[operationchosen]);
						fprintf(p, "%s",prp_logic_ops[operationchosen]);

						inputchosen = inputWidthRequest(inputs,bit_max,width_selected_2);
						fprintf(v, "%s%d[%d:%d])",vlog_wire_type[0],inputchosen,pos4,pos3);
						fprintf(c, "%s%d(%d,%d))",chisl_wire_type[0],inputchosen,pos4,pos3);
						fprintf(p, "%s%d@(%d:%d))",prp_wire_type[0],inputchosen,pos3,pos4);
					}*/
					break;
			}

		}
		else if((width > bit_min) && _signed){	
			// PYROPE-REMOVE
			if(1/*xorshift32()%2*/){	//directly prints signed input, to avoid recasts and maximize signed usage
				if(invert){
					fprintf(v, "~");
					fprintf(c, "~");
					fprintf(p, "~");
				}
				inputchosen = inputWidthRequest(inputs,bit_max,width);
				wire_type = 0;	//have to reset as a new inputchosen has been selected
				if(use_constant){	//if a literal wasnt printed prevously but a constant is being commanded, changes the wire type being used
					if(((inputchosen < inputs/2) && has_child) || (!has_child)){
						wire_type = 2;	//switches to literal operation wire
					}
				}
				else if(use_wire){	//if a literal wasnt used, and rolls to use a previous "y" wire
					if(inputchosen < limit){
						wire_type = 1;	//switches to previous wire
					}
				}
				fprintf(v, "%s%d",vlog_wire_type[wire_type],inputchosen);
				fprintf(c, "%s%d",chisl_wire_type[wire_type],inputchosen);
				fprintf(p, "%s%d",prp_wire_type[wire_type],inputchosen);
				if(_signed && (!(width%2))){	//for when a signed right shift requests a signed value, but an incorrectly signed value is returned
					force_signed=1;
				}	
			}
			else{	//otherwise recasts randomly chosen input part select, given a low chance for more usage of natively signed inputs
				fprintf(v, "%s(%s%s%d[%d:%d])",_signed?"$signed":"",invert?"~":"",vlog_wire_type[wire_type],inputchosen,pos1+width-1,pos1);
				fprintf(c, "(%s%s%d(%d,%d))%s",invert?"~":"",chisl_wire_type[wire_type],inputchosen,pos1+width-1,pos1,_signed?".asSInt":"");
			}
		}
		else {	
			if(invert){
				fprintf(v, "~");
				fprintf(c, "~");
				fprintf(p, "~");
			}
			fprintf(v, "%s%d[%d:%d]",vlog_wire_type[wire_type],inputchosen,pos1+width-1,pos1);
			fprintf(c, "%s%d(%d,%d)",chisl_wire_type[wire_type],inputchosen,pos1+width-1,pos1);
			if(matchInputWidth(inputs, bit_max, width, inputchosen)){
				fprintf(p, "%s%d",prp_wire_type[wire_type],inputchosen);	//dont specify bit-select if its the whole thing in pyrope, tends to make output tiny
			}
			else{
				fprintf(p, "%s%d@(%d:%d)",prp_wire_type[wire_type],inputchosen,pos1,pos1+width-1);
			}
			if(_signed){	//for when a signed right shift requests a signed value, but an part select is returned
				force_signed=1;
			}	
		}
		fprintf(v, ")");
		fprintf(c, ")");
		if(width==1 || force_signed){
			fprintf(c, ".as%cInt",_signed?'S':'U' );	//chisel automatically assigns single bits as bools
		}
		fprintf(p, ")");
	}
}


// inputWidthRequest(), helper function to randomInput()
// Returns a random input variable based on
// needed width specified, variable inferred based on how many
// inputs exist in the circuit
int inputWidthRequest(int inputs, int bit_max, int width) {	
	int bit_min = bit_max/2;
	int first_occurence = width-1-bit_min;	//name of first occurence of input with width
	int range = bit_max-bit_min+1;			//range of possible bit widths
	int instances = (inputs-1)/(first_occurence+range);	//how many inputs of a bit width exist past the first
	int result = first_occurence + range*(xorshift32()%(instances+1));	//limit makes sure this does not pass a wire number greater than the limit
	return result;
}

// matchInputWidth(), helper function to randomInput()
// Returns true if the wire number passed in matches the width passed in
bool matchInputWidth(int inputs, int bit_max, int width, int wire_number) {
	int current_width;
	for(int i=0; i<inputs; i++){
		current_width = ((bit_max/2)+i+1)%(bit_max+2);
		if(wire_number==i && current_width==width){
			return true;
		}
	}
	return false;
}

// randomConstant()
// Helper to any any function than needs a random constant printed given width and signness
void randomConstant(FILE *v, FILE *c, int width, bool _signed) {
	bool neg = xorshift32()%(1+_signed);	//rolls whether negative or not
	int value = xorshift32()%((1 << width)/(1+_signed));	//2's complement range stunted by 1/2
	fprintf(v, "(%c%d'%s%d)",neg?'-':' ',width,_signed?"sd":"d",value);
	fprintf(c, "(%c%d.%c(%d.W))",neg?'-':' ',value,_signed?'S':'U',width);
}

// getInputWidth()
// Returns an inputs width given its wire number
int getInputWidth(int bit_max, int wire_number) {
	int bit_min = bit_max/2;
	return bit_min + 1 + (wire_number%(bit_max - bit_min + 1));
}

// printAssignments()
// Takes care of possible conditionals and generic wire assignments
void printAssignments(FILE *v, FILE *c, FILE *p, int inputs, int bit_max, int width, int budget, int wire_number, bool _signed, bool force_constants, bool allow_constants, bool has_child) {
	char z = force_constants?'b':'y';	//determines whether inputs or constants are being assigned
	fprintf(v, "\n	assign %c%d = ",z,wire_number);	//verilog output will always look the same
	bool Mux;
	if(xorshift32()%2){		//No Conditionals
		fprintf(c, "\n	%c%d := ",z,wire_number);
		fprintf(p, "\n%c%d = ",z,wire_number);
		functionGen(v, c, p, inputs, bit_max, width, budget, width%2, 0, 1, 0, force_constants, allow_constants, wire_number, has_child);
	}
	else{					//Conditionals used
		Mux = xorshift32()%2;	//Chisel Mux() option
		budget--;


		if(Mux){	
			fprintf(c, "\n	%c%d := Mux(",z,wire_number);
		}
		else{
			fprintf(c, "\n	when(");
		}
		fprintf(p, "\nif (");

		//rolls for condition, should stick to boolean (single bit)
		if(xorshift32()%((budget!=0)+1)){
			functionGen(v,c,p,inputs,bit_max,1,budget,0,0, 1,0,force_constants,allow_constants,wire_number,has_child);
		}
		else{
			// Request single bit from randomInput
			randomInput(v,c,p,inputs,bit_max,1,0, 1,force_constants,allow_constants,wire_number,has_child);
		}

		fprintf(v, "?" );
		fprintf(c, ".asBool" );
		if(Mux){
			fprintf(c, ",");
		}
		else{
			fprintf(c, ") {\n		%c%d := ",z,wire_number);
		}
		fprintf(p, ") {\n   ");
		fprintf(p, "%c%d = ",z,wire_number);

		//rolls for first =true output
		if(xorshift32()%((budget!=0)+1)){
			functionGen(v,c,p,inputs,bit_max,width,budget,_signed,0, 1,0,force_constants,allow_constants,wire_number,has_child);
		}
		else{
			//print ternary opearnd
			randomInput(v,c,p,inputs,bit_max,width,_signed, 1,force_constants,allow_constants,wire_number,has_child);
		}

		fprintf(v, ":");
		if(Mux){
			fprintf(c, "," );
		}
		else{
			fprintf(c, "} .otherwise {\n		%c%d := ",z,wire_number);
		}
		fprintf(p, " } \nelse {\n   ");
		fprintf(p, "%c%d = ",z,wire_number);

		// rolls for second =false output
		if(xorshift32()%((budget!=0)+1)){
			functionGen(v,c,p,inputs,bit_max,width,budget,_signed,!_signed, 1,0,force_constants,allow_constants,wire_number,has_child);	//forces concatenation for signed right shift to preserve signness
		}
		else{
			//print ternary opearnd
			randomInput(v,c,p,inputs,bit_max,width,_signed, 1,force_constants,allow_constants,wire_number,has_child);
		}

		if(Mux){
			fprintf(c, ")" );
		}
		else{
			fprintf(c, "}" );
		}
		fprintf(p, " }");
	}
	fprintf(v, ";");

}

