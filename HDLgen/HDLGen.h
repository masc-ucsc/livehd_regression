//-----------------------------------------------------------------------------
// HDLGen.h
// Header file for HDLGen.cpp
// Holds general function protoypes used to randomly create valid verilog
// modules used for LiveHD testing
//-----------------------------------------------------------------------------
#include <string.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>
#include <string>

// Psuedo-Random Number Generation --------------------------------------------

// xorshift32()
// Taken from vlogHammer which took it from wikipedia article on
// xorshift rng, extermely efficient implementation of pseudo-rng,
// avoids use of rand()
uint32_t xorshift32(uint32_t seed);


// Declaration functions ------------------------------------------------------

// init_IO()
// Creates input and output for module referenced by file
// Returns number of inputs created for FILE f module
int init_IO(FILE *f);

// declareModule()
// Prints verilog standard module declaration to file
// Randomly creates and returns amount of input variables to be used
int declareModule(FILE *f);

// splitOutput
// Same function as declareModule(), except it declares parts
// of output wire
void splitOutput(FILE *f, int inputs);

// createIO()
// Prints to file either declarations of input or output wires based on it input is true
// Creates number of instances in accordance with INPUT/BIT rules
// Returns total width of sum of each instance created
int createIO(FILE *f, bool input, int instances);

// printVerilogOutput
// Does assign statements for verilog file for the output of the module
void printVerilogOutput(FILE *f,int inputs,int budget,uint32_t seed);

// endFile()
// Prints closing statement of each file
void endFile(FILE *f);

// Creation functions --------------------------------------------------------

// functionGen()
// Uses recursive helper functions to create randomized functions
// Length of functions decided by budget which determines how many recursive
// iterations are allowed to occur within each function
void functionGen(FILE *f, int inputs, int width, int budget,uint32_t seed);

// concatGen()
// Recursively fufills a bit width requirement through concatenating 
// randomly chosen bit widths taken from inputs and other functions
void concatGen(FILE *f, int inputs, int width, int budget,uint32_t seed);

// binaryGen()
// Recursively fufills a bit width requirement through binary operations
// that output the necessary bit width
void binaryGen(FILE *f, int inputs, int width, int budget, uint32_t seed);

// ternaryGen()
// Recursively fufills a bit width requirement through a ternary opeartion
// where the results are the necessary bit width
void ternaryGen(FILE *f, int inputs, int width, int budget, uint32_t seed);

// Helper functions ----------------------------------------------------------

// randomInput()
// Prints a random part or whole input depending on
// the width requested, depends on inputWidthRequest()
// Also acts as a single bit random generator, using logical
// and unary operators to produce values
void randomInput(FILE *f,int inputs, int width, uint32_t seed);

// inputWidthRequest(), helper function to randomInput()
// Returns a random input variable based on
// needed width specified, variable inferred based on how many
// inputs exist in the circuit
int inputWidthRequest(int inputs, int width, uint32_t seed);

