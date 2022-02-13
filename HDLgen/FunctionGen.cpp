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
#include "FunctionGen.h"

#define XORSHIFT_SEED 87
#define CHANCE_OF_CONSTANT 3
#define CHANCE_OF_WIRE 5

//using namespace std;

// Operations -----------------------------------------------------------------
const std::string vlog_logic_ops[] = {
	">",	// 00
	">=",	// 01
	"<",	// 02
	"<=",	// 03
	"==",	// 04
	"!=",	// 05
	"&&",	// 06
	"||",	// 07
};

const std::string chisl_logic_ops[] = {
	">",	// 00
	">=",	// 01
	"<",	// 02
	"<=",	// 03
	"===",	// 04
	"=/=",	// 05
	"&&",	// 06
	"||",	// 07
};

const std::string prp_logic_ops[] = {
	">",	// 00
	">=",	// 01
	"<",	// 02
	"<=",	// 03
	"==",	// 04
	"!=",	// 05
	" and ",// 06
	" or ",	// 07
};

const std::string vlog_unary_ops[] = {
	"!",	// 00
	"&",	// 01
	"|",	// 02
	"^",	// 03
};

const std::string chisl_unary_ops[] = {
	"!",	//00
	".andR",//01
	".orR",	//02
	".xorR",//03
};

const std::string prp_unary_ops[] = {
	"!",	//00
	// No others currently exist
};

const std::string vlog_binary_ops[] = {	
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

const std::string chisl_binary_ops[] = {	
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

const std::string prp_binary_ops[] = {	
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
const std::string vlog_wire_type[] = {
	"io_a",		//module level input 00
	"y",		//module level wire 01
	"b",		//operation of literals 02
	"rom",		//rom of literals 03
};

const std::string chisl_wire_type[] = {
	"io.a",		//module level input 00
	"y",		//module level wire 01
	"b",		//operation of literals 02
	"rom",		//rom of literals 03
};

const std::string prp_wire_type[] = {
	"a",		//converted wire of module level input 00
	"y",		//module level wire 01
	"b",		//operation of literals 02
	"rom",		//rom of literals 03
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

// set_seed()
// Simple call to set the seed for RNG
void set_seed(uint32_t seed) { xorshift32(seed); }

// one_out_of()
// Returns true with a 1/N probability
// Can also be set to roll conditionally, or to invert
// probability to make it N-1/N
bool one_out_of(int n, bool allow=true, bool inv=false) {
	bool result = inv == (xorshift32() % n);	// inv sets the chances of rolling true to be high
	return result && allow;
}

// num_less_than()
// Returns int less than N, if N==0 then it returns 0
int num_less_than(int n) {
	return n == 0 ? 0 : xorshift32() % n;
}

// Creation functions --------------------------------------------------------

// functionGen()
// Uses recursive helper functions to create randomized functions
// Length of functions decided by budget which determines how many recursive
// iterations are allowed to occur within each function
void Circuit::functionGen(int width, int budget, bool _signed, bool force_concat, bool allow_invert, bool no_mult, bool force_constants, int limit){
	bool invert = one_out_of(2, allow_invert);//xorshift32()%(1+allow_invert);
	// 2 main posiblities: concatonation or binary operation
	// PYROPE-REMOVE
	if(1/*xorshift32()%3*/)
		binaryGen(width, budget, _signed, invert, force_concat, no_mult, force_constants, limit);		
	else{	
		if(_signed){
			v->log("$signed(");
		}
		if(invert){
			v->log("~");
			c->log("~");
		}
		concatGen(width, budget, force_concat, no_mult, force_constants, limit);	//concat always returns uints so can be simple recasted
		if(_signed){
			v->log(")" );
			c->log(".asSInt");
		}
		else{
			c->log(".asUInt");
		}
	}	
}

// concatGen()
// Recursively fufills a bit width requirement through concatenating 
// randomly chosen bit widths taken from inputs and other functions
void Circuit::concatGen(int width, int budget, bool force_concat, bool no_mult, bool force_constants, int limit){
	budget--;
	v->log("{");
	c->log("Cat(");

	if(!budget)
		randomInput(width, 0, 1, force_constants, limit);
	else {
		while(width > 0) {
			int range = width;
			// precompute next subwidth - depending on width being larger than any input, protects binaryGen from a request that is too large to fufill
			if(width > bit_max + 1)
				range = bit_max + 1;
			int sub_width = num_less_than(range) + 1;//xorshift32() % range + 1;
			if(one_out_of(3, true, true)/*xorshift32()%3*/) {
				binaryGen(sub_width, budget, 0, 1, force_concat, no_mult, force_constants, limit);
			}
			else {
				concatGen(sub_width, sub_width==1 ? 1 : budget, force_concat, no_mult, force_constants, limit);		//cant split anymore once sub_width is 1
			}

			if(width > sub_width) {
				v->log(",");
				c->log(",");
			}
		width -= sub_width;
		}
	}

	v->log("}");
	c->log(")");
}


// binaryGen()
// Recursively fufills a bit width requirement through binary operations
// that output the necessary bit width
void Circuit::binaryGen(int width, int budget, bool _signed, bool invert, bool force_concat, bool no_mult, bool force_constants, int limit){
	// PYROPE-REMOVE
	//int op = xorshift32()%11;//roll for operator, doesn't do signed right shifts for single bits
	int op = num_less_than(6);//xorshift32()%6;	//anything past * isnt guaranteed to work
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
			v->log("{$signed(1'b0),");
			c->log("Cat(0.S,");
			width--;
		}*/
		if(((op>6) && _signed && (budget>0)) && (op<9)){	//part selecting for chisel returns UInt, need to recast. Applicable only for % and <<
			v->log("$signed");
			c->log("(");
		}
		// PYROPE-REMOVE
		/*
		else if((_signed && op==9)){	//since URS has an unsigned operand, the result of the statement has to be set to be signed to match the output
			if(invert){		//~ has to come before $signed in verilog
				v->log("(~");
			}
			v->log("$signed");
			c->log("(");	//sets .asSInt
		}
		else if((!_signed && op==10)){
			c->log("(");	//sets .asUInt
		}
		*/
		

		if(invert){		//invert is on the inside to keep parenthesis close, this helps with recasting the whole equation instead of just the inside
			// PYROPE-REMOVE
			//if(!(_signed && (op==9))){
				v->log("(~");	//mainly due to >>> issues
			//}
			c->log("~");
			p->log("~");
		}
		// PYROPE-REMOVE
		/*
		if(op==10){
			v->log("$signed");
			//c->log("(");
		}*/

		v->log("(");
		c->log("(");
		p->log("(");
		if(budget==0){
			// print full binary operation
			randomInput(width,_signed, allow_invert, force_constants, limit);
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
				//v->log("GOT HERE SIGNED RS FOR UNSIGNED OPERATION" );
				shift_sign = 1;
			}
			else if(op==9 && _signed){	//forces lhs operand to be unsigned to ensure unsigned shift
				shift_sign = 0;
			}*/


			//rolls whether or not to expand binary operation heirarchy
			if(one_out_of(2, op > 7 || op < 3)/*xorshift32()%(1 + (op>7 || op<3))*/) {	//expands, prevents nested arithmetic operations, those become too confusing for yosys compiler
				functionGen(width_1, budget, shift_sign, 0, allow_invert, no_mult, force_constants, limit);
			}
			else{
				//binary operation
				randomInput(width_1, shift_sign, allow_invert, force_constants, limit);
			}


			v->log(" " + vlog_binary_ops[op] + " ");
			c->log(" " + chisl_binary_ops[op] + " ");
			p->log(" " + prp_binary_ops[op] + " ");

			//roll for second operand
			if(one_out_of(2, op > 7 || op < 3)/*xorshift32()%(1 + (op>7 || op<3))*/) {	//expands
				functionGen(width_2, budget, op>7?0:_signed, 0, allow_invert, no_mult, force_constants, limit); 	//prevents shifting by a negative number, forces uint to be used
			}
			else{
				//binary operation
				randomInput(width_2, op>7?0:_signed, allow_invert, force_constants, limit);	//prevents shifting by a negative number, forces uint to be used
			}


			
		}
		v->log(")");
		c->log(")");
		p->log(")");
		//if(op==10){
		//	c->log(".asSInt)");
		//}
		if(((op>6) && (budget>0)) && (op<9)){	//part selecting for chisel returns UInt, need to recast. Only applicable for % and <<
			std::string part_sel = width == 1 ? "(0)" : "(" + STR(width-1) + ",0)";
			c->log(part_sel);	//recasts part select
			if(_signed)
				c->log(".asSInt)");
		}
		// PYROPE-REMOVE
		/*
		else if(_signed && op==9){	//either casts as SInt or forces operation to be signed
			c->log(".asSInt)");	//sets .asSInt
		}
		else if(!_signed && op==10){	//since SRS operations use a signed operand, need to specify the result of the statement is unsigned
			c->log(".asUInt)");
		}*/
		if(invert)
			v->log(")");	//closes parenthesis

		// PYROPE-REMOVE
		/*
		if((op==10) && (force_concat) && (budget>0)){	//in this special case, the width of the SRS will be reduced by 1 and coancated with a 1'b0 to isolate it and maintain signness
			v->log("}");
			c->log(")");
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
void Circuit::randomInput(int width, bool _signed, bool allow_invert, bool force_constants, int limit){
	int inputchosen,input_range;
	int operationchosen;
	int width_selected,width_selected_2;
	int pos1,pos2,pos3,pos4;
	bool invert = one_out_of(2, allow_invert);
	bool force_signed =0;	//Used for signed right shifts, to force otherwise unsigned parts/inputs to be signed
	bool use_constant = one_out_of(CHANCE_OF_CONSTANT, constants, true);	//determines if a constant or an input will be returned
	bool use_wire = one_out_of(CHANCE_OF_WIRE, !use_constant, true);	//if a constant isn't used, also rolls to reuse a previous wire
	int wire_type = 0;	//default is typical top level input
	if(force_constants || one_out_of(2, use_constant)){	
		randomConstant(width,_signed);	//prints a random constant generated given width/signness
	}
	else {
		if(width > (bit_min+1)) {	//needs specific input
			input_range = inputs>(bit_max-bit_min) ? bit_max+2-width : bit_min+1+inputs-width;		//when there are less inputs than possible bit width combinations
			width_selected = width + num_less_than(input_range);
		}
		else{	//otherwise selects random input
			input_range = inputs>(bit_max-bit_min) ? bit_min+1 : inputs;
			width_selected = bit_min+1+num_less_than(input_range);	
		}

		pos1 = num_less_than(width_selected - width);	//finds small value
		if(!bit_min)
			pos2 =pos1;
		else{
			pos2 = num_less_than(width_selected - pos1 - 1) + pos1 + 1;	//finds random 2nd larger position
		}
		if(((width==1) || !(width%2) || (width<=bit_min)) && _signed){	//right shifts may sometimes request values that aren't naturally signed to be signed, need recast if this is the case
			v->log("$signed");	//chisel automatically assigns single bits as bools
		}
		v->log("(");
		c->log("(");
		p->log("(");

		inputchosen = inputWidthRequest(width_selected);
		if(use_constant){	//if a literal wasnt printed prevously but a constant is being commanded, changes the wire type being used
			if(((inputchosen < inputs/2) && hasChild()) || (!hasChild())){
				wire_type = 2;	//switches to literal operation wire
			}
		}
		else if(use_wire){	//if a literal wasnt used, and rolls to use a previous "y" wire
			if(inputchosen < limit || entropy)
				wire_type = 1;	//switches to previous wire, or creates comb loop
		}


		if(width==1){	//where a single bit is needed
			if(invert){
				v->log("~");
				c->log("~");
				p->log("~");
			}
			// Outputs randomized single bit values
			switch(num_less_than(3)){
				case 0 :	//simple selected bit print
					//inputchosen = inputWidthRequest(inputs,bit_max,width_selected,limit);
					v->log(vlog_wire_type[wire_type] + STR(inputchosen) + "[" + STR(pos1) + "]");
					c->log(chisl_wire_type[wire_type] + STR(inputchosen) + "(" + STR(pos1) + ")");
					p->log(prp_wire_type[wire_type] + STR(inputchosen) + "@(" + STR(1 << pos1) + ")");
					break;
				case 1 :	//unary operation
					// PYROPE-REMOVE
					//operationchosen = xorshift32()%4;
					operationchosen = 0;
					v->log("(" + vlog_unary_ops[operationchosen] + vlog_wire_type[wire_type] + STR(inputchosen) + "[" + STR(pos2) + ":" + STR(pos1) + "]" + ")");
					//unary inversion isnt bit reduction
					if(operationchosen==0){
						c->log("(!" + chisl_wire_type[wire_type] + STR(inputchosen) + "(" + STR(pos2) + "," + STR(pos1) + "))");
					}
					else{
						c->log("(" + chisl_wire_type[wire_type] + STR(inputchosen) + "(" + STR(pos2) + "," + STR(pos1) + chisl_unary_ops[operationchosen] + ")");
					}
					p->log("(" + prp_unary_ops[operationchosen] + "(" + prp_wire_type[wire_type] + STR(inputchosen) + "@(" + STR(pos1) + ":" + STR(pos2) + ")))");
					break;
				case 2 :	//logical operation
					operationchosen = num_less_than(8);
					if(operationchosen == 1 || operationchosen == 3)
						operationchosen--;
					// PYROPE-EDIT: >= and <= dont work in pyrope, disable line above

					// Chisel cant do logical AND/OR on nonbooleans (need only one bit)
					// PYROPE-EDIT: CANT DO LOGICAL COMPARATORS CORRECTLY ON NON BOOLEANS
					//if(operationchosen>5){
						v->log("(" + vlog_wire_type[wire_type] + STR(inputchosen) + "[" + STR(pos2) + "]");
						c->log("(" + chisl_wire_type[wire_type] + STR(inputchosen) + "(" + STR(pos2) + ")");
						p->log("(" + prp_wire_type[wire_type] + STR(inputchosen) + "@(" + STR(1 << pos2) + ")");

						v->log(vlog_logic_ops[operationchosen]);
						c->log(chisl_logic_ops[operationchosen]);
						p->log(prp_logic_ops[operationchosen]);

						inputchosen = inputWidthRequest(width_selected);
						v->log(vlog_wire_type[0] + STR(inputchosen) + "[" + STR(pos1) + "])");
						c->log(chisl_wire_type[0] + STR(inputchosen) + "(" + STR(pos1) + "))");
						p->log(prp_wire_type[0] + STR(inputchosen) + "@(" + STR(1 << pos1) + "))");
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
						
						
						v->log("(%s%d[%d:%d]",vlog_wire_type[wire_type],inputchosen,pos2,pos1);
						c->log("(%s%d(%d,%d)",chisl_wire_type[wire_type],inputchosen,pos2,pos1);
						p->log("(%s%d@(%d:%d)",prp_wire_type[wire_type],inputchosen,pos1,pos2);

						v->log("%s",vlog_logic_ops[operationchosen]);
						c->log("%s",chisl_logic_ops[operationchosen]);
						p->log("%s",prp_logic_ops[operationchosen]);

						inputchosen = inputWidthRequest(inputs,bit_max,width_selected_2);
						v->log("%s%d[%d:%d])",vlog_wire_type[0],inputchosen,pos4,pos3);
						c->log("%s%d(%d,%d))",chisl_wire_type[0],inputchosen,pos4,pos3);
						p->log("%s%d@(%d:%d))",prp_wire_type[0],inputchosen,pos3,pos4);
					}*/
					break;
			}

		}
		else if((width > bit_min) && _signed){	
			// PYROPE-REMOVE
			if(1/*xorshift32()%2*/){	//directly prints signed input, to avoid recasts and maximize signed usage
				if(invert){
					v->log("~");
					c->log("~");
					p->log("~");
				}
				inputchosen = inputWidthRequest(width);
				wire_type = 0;	//have to reset as a new inputchosen has been selected
				if(use_constant){	//if a literal wasnt printed prevously but a constant is being commanded, changes the wire type being used
					if(((inputchosen < inputs/2) && hasChild()) || (!hasChild())){
						wire_type = 2;	//switches to literal operation wire
					}
				}
				else if(use_wire){	//if a literal wasnt used, and rolls to use a previous "y" wire
					if(inputchosen < limit || entropy){
						wire_type = 1;	//switches to previous wire, or creates comb loop
					}
				}
				v->log(vlog_wire_type[wire_type] + STR(inputchosen));
				c->log(chisl_wire_type[wire_type] + STR(inputchosen));
				p->log(prp_wire_type[wire_type] + STR(inputchosen));
				if(_signed && (!(width%2))){	//for when a signed right shift requests a signed value, but an incorrectly signed value is returned
					force_signed=1;
				}	
			}
			else{	//otherwise recasts randomly chosen input part select, given a low chance for more usage of natively signed inputs
				if(_signed)
					v->log("$signed");
				
				v->log("(" + vlog_wire_type[wire_type] + STR(inputchosen) + "[" + STR(pos1+width-1) + ":" + STR(pos1) + "])");
				c->log("(" + chisl_wire_type[wire_type] + STR(inputchosen) + "(" + STR(pos1+width-1) + "," + STR(pos1) + "))");

				if(_signed)
					c->log(".asSInt");
			}
		}
		else {	
			if(invert){
				v->log("~");
				c->log("~");
				p->log("~");
			}
			v->log(vlog_wire_type[wire_type] + STR(inputchosen) + "[" + STR(pos1+width-1) + ":" + STR(pos1) + "]");
			c->log(chisl_wire_type[wire_type] + STR(inputchosen) + "(" + STR(pos1+width-1) + "," + STR(pos1) + ")");
			if(matchInputWidth(width, inputchosen)){
				p->log(prp_wire_type[wire_type] + STR(inputchosen));	//dont specify bit-select if its the whole thing in pyrope, tends to make output tiny
			}
			else{
				p->log(prp_wire_type[wire_type] + STR(inputchosen) + "@(" + STR(pos1) + ":" + STR(pos1+width-1) + ")");
			}
			if(_signed)	//for when a signed right shift requests a signed value, but an part select is returned
				force_signed = 1;	
		}
		v->log(")");
		c->log(")");

		if(width==1 || force_signed) {
			//chisel automatically assigns single bits as bools
			c->log("as.");
			if(_signed)
				c->log("SInt");
			else
				c->log("UInt");
		}
		p->log(")");
	}
}


// inputWidthRequest(), helper function to randomInput()
// Returns a random input variable based on
// needed width specified, variable inferred based on how many
// inputs exist in the circuit
int Circuit::inputWidthRequest(int width) {	
	int first_occurence = width-1-bit_min;	//name of first occurence of input with width
	int range = bit_max-bit_min+1;			//range of possible bit widths
	int instances = (inputs-1)/(first_occurence+range);	//how many inputs of a bit width exist past the first
	int result = first_occurence + range * num_less_than(instances + 1);	//limit makes sure this does not pass a wire number greater than the limit
	return result;
}

// matchInputWidth(), helper function to randomInput()
// Returns true if the wire number passed in matches the width passed in
bool Circuit::matchInputWidth(int width, int wire_number) {
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
void Circuit::randomConstant(int width, bool _signed) {
	std::string value = STR(num_less_than((1 << width)/(1+_signed)));				//2's complement range stunted by 1/2
	std::string roll_neg = one_out_of(2, _signed) ? "-" : "";
	std::string v_sign = "'d";
	std::string c_sign = "U";
	if(_signed) {
		v_sign = "'sd";
		c_sign = "S";
	}

	v->log("(" + roll_neg + STR(width) + v_sign + value + ")");
	c->log("(" + roll_neg + value + "." + c_sign + "(" + STR(width) + "))");
}

// getInputWidth()
// Returns an inputs width given its wire number
int Circuit::getInputWidth(int wire_number) {
	return bit_min + 1 + (wire_number % (bit_max - bit_min + 1));
}

// printAssignments()
// Takes care of possible conditionals and generic wire assignments
void Circuit::printAssignments(int width, int budget, int wire_number, bool _signed, bool force_constants) {
	std::string z = force_constants ? "b" : "y";	//determines whether inputs or constants are being assigned
	v->log("	assign " + z + STR(wire_number) + " = ");	//verilog output will always look the same
	bool Mux;
	if(one_out_of(2)){		//No Conditionals
		c->log("\n	" + z + STR(wire_number) + " := ");
		p->log("\n" + z + STR(wire_number) + " = ");
		functionGen(width, budget, width%2, 0, 1, 0, force_constants, wire_number);
	}
	else{					//Conditionals used
		Mux = one_out_of(2);	//Chisel Mux() option
		budget--;


		if(Mux){	
			c->log("\n	" + z + STR(wire_number) + " := Mux(");
		}
		else{
			c->log("\n	when(");
		}
		p->log("\nif (");

		//rolls for condition, should stick to boolean (single bit)
		if(one_out_of(2, budget)) {
			functionGen(1,budget,0,0, 1,0,force_constants,wire_number);
		}
		else{
			// Request single bit from randomInput
			randomInput(1,0, 1,force_constants,wire_number);
		}

		v->log("?" );
		c->log(".asBool" );
		if(Mux){
			c->log(",");
		}
		else{
			c->log(") {\n		" + z + STR(wire_number) + " := ");
		}
		p->log(") {\n   ");
		p->log(z + STR(wire_number) + " = ");

		//rolls for first =true output
		if(one_out_of(2, budget)) {
			functionGen(width,budget,_signed,0, 1,0,force_constants,wire_number);
		}
		else{
			//print ternary opearnd
			randomInput(width,_signed, 1,force_constants,wire_number);
		}

		v->log(":");
		if(Mux){
			c->log("," );
		}
		else{
			c->log("} .otherwise {\n		" + z + STR(wire_number) + " := ");
		}
		p->log(" } \nelse {\n   ");
		p->log(z + STR(wire_number) + " = ");

		// rolls for second =false output
		if(one_out_of(2, budget)) {
			functionGen(width,budget,_signed,!_signed, 1,0,force_constants,wire_number);	//forces concatenation for signed right shift to preserve signness
		}
		else{
			//print ternary opearnd
			randomInput(width,_signed, 1,force_constants,wire_number);
		}

		if(Mux){
			c->log(")" );
		}
		else{
			c->log("}" );
		}
		p->log(" }");
	}
	v->log(";");
	dumpLogs();
}