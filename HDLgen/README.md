HDLgen Readme

This scipt is meant to produce random equivalent circuits in verilog and chisel HDLs, with pyrope coming soon.
Current features include: Hierarchy
Features to come: Registers/Memory blocks

# General logic: 
Given values INPUT and BIT_MAX, a random module is created, with INPUT amount of inputs, each with a recurring width starting from [BIT_MAX/2:0] to [BIT_MAX:0].
For each input, an equivalent length wire is created for each input which is assigned a random function that is controlled to be the exact width of the wire. 
The resulting output of the module is the concatenation of each wire, making the width of the output simple to calculate from the initialization of the module, as it it the sum of its inputs widths.

# Use: 
To re-compile run "make" after "make clean", then "./Generate" or similar based on your distribution. Generate.cpp produces two files named "randomchisel.scala" and "randomverilog.v", the circuits created are determined by int inputs found within Generate.cpp. **inputs** determines how many inputs the top level module will contain, **bit_max** determines the longest possible width of the inputs -1 depending on if enough are created. **levels** determines how many hierarchical levels will be created, choose 1 for a simple top level module, **split** determines how much smaller each subsequent submodule will be from its predecessor, with the submodule **input** and **bit_max** being divided by **split**. **budget** is how many iterations of the function creation loop can possibly be run, effectively this determines how long potential functions can be, a good range is between 2-5, though more complex functions can be created, though this makes is more difficult to debug.
