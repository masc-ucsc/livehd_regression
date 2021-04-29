//-----------------------------------------------------------------------------
// Mark Zakharov
// Generate.cpp
// Client for HDLGen
//-----------------------------------------------------------------------------
#include<string>
#include<iostream>
#include"HDLGen.h"

using namespace std;

int main(){
	// Opens file
	char filename_v[1024];
	char filename_c[1024];
	snprintf(filename_v, 1024, "randomverilog.v");
	snprintf(filename_c, 1024, "randomchisel.scala");
	FILE *v = fopen(filename_v, "w");
	FILE *c = fopen(filename_c,"w");
	
	// Hierarchy tests
	int inputs = 15;
	int bit_max = 7;
	int levels = 1;
	int split = 2;
	int budget = 7;

	createHierarchy(v,c,inputs,bit_max,levels,split,budget);

}