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
	char filename[1024];
	snprintf(filename, 1024, "randomverilog.v");
	FILE *f = fopen(filename, "w");

	// Creates new verilog file
	int inputs = init_IO(f);
	// prints assign statements
	printVerilogOutput(f,inputs,4,324);
	// ends file
	endFile(f);
	
}