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

// Psuedo-Random Number Generation --------------------------------------------

// xorshift32()
// Taken from vlogHammer which took it from wikipedia article on
// xorshift rng, extermely efficient implementation of pseudo-rng,
// avoids use of rand()
// uint32_t xorshift32(uint32_t seed);

// set_seed()
// Simple call to set the seed for RNG
void set_seed(uint32_t seed);

// one_out_of()
// Returns true with a 1/N probability
// Can also be set to roll conditionally, or to invert
// probability to make it N-1/N
bool one_out_of(uint32_t n, bool allow, bool inv);

// num_less_than()
// Returns int less than N, if N==0 then it returns 0
uint32_t num_less_than(uint32_t n);

// Creation functions --------------------------------------------------------

// functionGen()
// Uses recursive helper functions to create randomized functions
// Length of functions decided by budget which determines how many recursive
// iterations are allowed to occur within each function
void functionGen(FILE *v, FILE *c, FILE *p, int inputs, int bit_max, int width, int budget, bool _signed, bool force_concat, bool allow_invert, bool no_mult, bool force_constants, bool allow_constants, int limit, bool has_child);

// concatGen()
// Recursively fufills a bit width requirement through concatenating 
// randomly chosen bit widths taken from inputs and other functions
void concatGen(FILE *v, FILE *c, FILE *p, int inputs, int bit_max, int width, int budget, bool force_concat, bool no_mult, bool force_constants, bool allow_constants, int limit, bool has_child);

// binaryGen()
// Recursively fufills a bit width requirement through binary operations
// that output the necessary bit width
void binaryGen(FILE *v, FILE *c, FILE *p, int inputs, int bit_max, int width, int budget, bool _signed, bool invert, bool force_concat, bool no_mult, bool force_constants, bool allow_constants, int limit, bool has_child);


// Helper functions ----------------------------------------------------------

// randomInput()
// Prints a random part or whole input depending on
// the width requested, depends on inputWidthRequest()
// Also acts as a single bit random generator, using logical
// and unary operators to produce values
void randomInput(FILE *v, FILE *c, FILE *p, int inputs, int bit_max, int width, bool _signed, bool allow_invert, bool force_constants, bool allow_constants, int limit, bool has_child);

// inputWidthRequest(), helper function to randomInput()
// Returns a random input variable based on
// needed width specified, variable inferred based on how many
// inputs exist in the circuit
int inputWidthRequest(int inputs, int bit_max, int width);

// matchInputWidth(), helper function to randomInput()
// Returns true if the wire number passed in matches the width passed in
bool matchInputWidth(int inputs, int bit_max, int width, int wire_number);

// randomConstant()
// Helper to any any function than needs a random constant printed given width and signness
void randomConstant(FILE *v, FILE *c, int width, bool _signed);

// getInputWidth()
// Returns an inputs width given its wire number
int getInputWidth(int bit_max, int wire_number);

// printAssignments()
// Takes care of possible conditionals and generic wire assignments
void printAssignments(FILE *v, FILE *c, FILE *p, int inputs, int bit_max, int width, int budget, int wire_number, bool _signed, bool force_constants, bool allow_constants, bool has_child);