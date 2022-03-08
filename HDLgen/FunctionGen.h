//-----------------------------------------------------------------------------
// FunctionGen.h
// Function generateion file for HDLGen.cpp
// Holds general function protoypes used to randomly create valid verilog
// modules used for LiveHD testing
//-----------------------------------------------------------------------------
#include <string.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <string>
#include <iostream>
#include <fstream>

#define STR(X) std::to_string(X) //TO-DO find a better solution to mixing numbers and strings

// Logger Class ---------------------------------------------------------------

class Logger {

private:
	std::ofstream logFile;
	std::string statement;
	
	int char_count;		//Keeps track of how many chars have been logged to target file
	

public:
	bool error, error_mode;
	int comb_wire_1, comb_wire_2;	//ordered wire numbers which make up combinational loop

	Logger(const std::string& logFileName) {
		logFile.open(logFileName);
		char_count = 0;
		comb_wire_1 = comb_wire_2 = -1;
	}

	~Logger() {
		logFile.close();
	}

	// Access functions -----------------------------------------------------------

	void setError(int wire_1, int wire_2) {
		error = true;
		comb_wire_1 = wire_1;
		comb_wire_2 = wire_2;
	}

	int getCharCount() { return char_count; }

	int getStatementLength() { return statement.length(); }

	// Print to file functions ----------------------------------------------------------

	void log(std::string str) {
		statement.append(str);
	}

	void dumpLog() {
		char_count += (int)statement.size();
    	logFile << statement << std::endl;
    	statement.clear();
	}

	// Error creation functions ------------------------------------------------------------
	/* Swaps the positions of two chars.
	Selections that must be avoided as there is a chance
	that they will not introduce a real error:
	- Swapping two chars that are equivalent
	- Swapping two digits of a constant if the value is within range
	- Swapping two digits of a named wire if there exists another such wire
	- Swapping open parenthesis with unary operator */
	void mutate_char_transpose() {
		//TO-DO create for new pyrope front end
	}

};


// Circuit Class ---------------------------------------------------------------

class Circuit {
public:
//private: TO-DO FIGURE OUT A WAY TO MAKE ME PRIVATE
	// Arguments that create the Circuit
	int bit_max;
	int inputs;
	int levels;
	int split;
	int budget;
	int error;

	bool constants;

	// Values that are results of the configuration
	int bit_min;
	int output_width;

	Logger* c;
	Logger* p;
	Logger* v;

	Circuit* child;
	Circuit* parent;

//public:

	Circuit (Logger* chisel_file, Logger* pyrope_file, Logger* verilog_file, int circuit_bit_max, int circuit_inputs, int circuit_levels, int rng_budget, int hier_split, bool allow_error, bool allow_constants) {
		bit_max = circuit_bit_max;
		inputs 	= circuit_inputs;
		levels 	= circuit_levels;
		split 	= hier_split;
		budget 	= rng_budget;

		error   = allow_error;
		constants = allow_constants;

		bit_min = bit_max / 2;
		output_width = 0;

		for (int k = 0; k < inputs; k++)
			output_width += bit_min + 1 + (k % (bit_max - bit_min + 1));

		c = chisel_file;
		p = pyrope_file;
		v = verilog_file;

		if (error) {
			c->setError(1,2);
			p->setError(1,2);
			v->setError(1,2);
		}

		child  = NULL;
		parent = NULL;

	}

	~Circuit() { }

	// Child and Parent Access Functions

	Circuit* getParent() { return parent; }

	bool setParent(Circuit* crct) {	//Just to be safe
		if (!crct)
			return false;
		parent = crct;
		return true;
	}

	Circuit* getChild() { return child; }

	bool setChild(Circuit* crct) {
		if (!crct)
			return false;
		child = crct;
		return true;
	}

	bool hasChild() { return child != NULL; }

	// Logger functions

	void dumpLogs() {
		c->dumpLog();
		p->dumpLog();
		v->dumpLog();
	}

	void startErr() {
		std::cout << "randomverilog.v:comb_loop:" << STR(v->getCharCount());
		v->error = true;
	}

	void clearErr() {
		std::cout << ":" << STR(v->getStatementLength() + v->getCharCount()) << std::endl;
		v->error = false;
	}

	// Circuit creation functions --------------------------------------------------------

	// Takes care of possible conditionals and generic wire assignments
	void printAssignments(int width, int func_budget, int wire_number, bool _signed, bool force_constants);

	// Uses recursive helper functions to create randomized functions
	// Length of functions decided by budget which determines how many recursive
	// iterations are allowed to occur within each function
	void functionGen(int width, int func_budget, bool _signed, bool force_concat, bool allow_invert, bool no_mult, bool force_constants, int limit);

	// Recursively fufills a bit width requirement through concatenating 
	// randomly chosen bit widths taken from inputs and other functions
	void concatGen(int width, int func_budget, bool force_concat, bool no_mult, bool force_constants, int limit);

	// Recursively fufills a bit width requirement through binary operations
	// that output the necessary bit width
	void binaryGen(int width, int func_budget, bool _signed, bool invert, bool force_concat, bool no_mult, bool force_constants, int limit);

	// Prints a random part or whole input depending on
	// the width requested, depends on inputWidthRequest()
	// Also acts as a single bit random generator, using logical
	// and unary operators to produce values
	void randomInput(int width, int func_budget, bool _signed, bool allow_invert, bool force_constants, int limit);

	// Helper functions ----------------------------------------------------------

	//  helper function to randomInput()
	// Returns a random input variable based on
	// needed width specified, variable inferred based on how many
	// inputs exist in the circuit
	int inputWidthRequest(int width);

	// helper function to randomInput()
	// Returns true if the wire number passed in matches the width passed in
	bool matchInputWidth(int width, int wire_number);

	// Helper to any any function than needs a random constant printed given width and signness
	void randomConstant(int width, bool _signed);

	// Returns an inputs width given its wire number
	int getInputWidth(int wire_number);

	// File Generation functions ---------------------------------------------------

	// declareModule(), helper to init_IO()
	// Prints verilog standard module declaration to files
	// Randomly creates and returns amount of input variables to be used
	// If 0 inputs is passed in, a random amound of inputs is created
	// Returns sub modules output width, or 0 if there is no child
	void declareModule();

	// verilog_chiselIO()
	// Prints to file inputs and outputs of currently declaring module
	// Returns sub modules output width, or 0 if there is no child
	void verilog_chiselIO();

	// declareWires()
	// Createswires which will serve either as the output of the top level, or as connections to lower levels
	void declareWires();

	// createROM(), helper to declareWires()
	// Creates a Chisel based ROM from its VecInit function, with UInt elements
	// ROM defaults any unknown addr values to the 0 element in the vector
	void createROM();

	// declareSubmodules()
	// Handles declaration of each submodule, given the previously generates x wires for their output
	void createSubmodules();

	// declareOutput()
	// Does assign statements for each top level wire and connects all wires to concatenated output
	void declareOutput();
};

// Psuedo-Random Number Generation --------------------------------------------

// set_seed()
// Simple call to set the seed for RNG
void set_seed(uint32_t seed);

// one_out_of()
// Returns true with a 1/N probability
// Can also be set to roll conditionally, or to invert
// probability to make it N-1/N
bool one_out_of(int n, bool allow, bool inv);

// num_less_than()
// Returns int less than N, if N==0 then it returns 0
int num_less_than(int n);