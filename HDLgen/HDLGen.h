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
#include "FunctionGen.h"

// Heirarchy Creation functions -----------------------------------------------

// createHierarchy()
// Loops through generating larger and larger submodules until the top is produced last.
// Levels starting at 1 determines how many levels of submodules exist below the top.
// Split is the ratio of the sizes of inputs and bit_max of each level.
void createHierarchy(Circuit* top_level, uint32_t seed);
