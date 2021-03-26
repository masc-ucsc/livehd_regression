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


// Heirarchy Creation functions -----------------------------------------------

// createHierarchy()
// Loops through generating larger and larger submodules until the top is produced last.
// Levels starting at 1 determines how many levels of submodules exist below the top.
// Split is the ratio of the sizes of inputs and bit_max of each level.
void createHierarchy(FILE *v,FILE *c,int inputs, int bit_max, int levels, int split, int budget);

// declareModule(), helper to init_IO()
// Prints verilog standard module declaration to files
// Randomly creates and returns amount of input variables to be used
// If 0 inputs is passed in, a random amound of inputs is created
// Returns sub modules output width, or 0 if there is no child
int declareModule(FILE *v,FILE *c,int inputs,int bit_max,int levels, int split,bool has_child);


// verilog_chiselIO()
// Prints to file inputs and outputs of currently declaring module
// Returns sub modules output width, or 0 if there is no child
int verilog_chiselIO(FILE *v,FILE *c,int inputs,int bit_max,int levels,int split,bool has_child);

// declareWires()
// Createswires which will serve either as the output of the top level, or as connections to lower levels
void declareWires(FILE *v,FILE *c,int inputs,int bit_max,int sub_output_width,bool has_child);

// declareSubmodules()
// Handles declaration of each submodule, given the previously generates x wires for their output
void createSubmodules(FILE *v,FILE *c,int inputs,int bit_max,int split,int levels);

// declareOutput()
// Does assign statements for each top level wire and connects all wires to concatenated output
void declareOutput(FILE *v,FILE *c,int inputs,int bit_max,int sub_output_width,int budget,bool has_child);

