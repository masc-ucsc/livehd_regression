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

	// Creates new verilog file
	int inputs = init_IO(v,c,20,85432);	//if inputs=0, creates random amount of inputs limited by INPUT_MAX
	// prints assign statements
	printVerilogChiselOutput(v,c,inputs,5);
	chisel_splitOutput(c,inputs);
	// ends file
	endFile(v,c);
	
}