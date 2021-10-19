HDLgen Readme

This scipt is meant to produce random equivalent circuits in verilog, chisel and pyrope.
Due to pyrope being is ongoing development, cases generated for it will be significantly less complex than for only verilog/chisel circuits.
Current features include: Hierarchy, constants
Features to come: Registers/Memory blocks

# General logic: 
Given values INPUT and BIT_MAX, a random module is created, with INPUT amount of inputs, each with a recurring width starting from [BIT_MAX/2:0] to [BIT_MAX:0].
For each input, an equivalent length wire is created for each input which is assigned a random function that is controlled to be the exact width of the wire. 
The resulting output of the module is the concatenation of each wire, making the width of the output simple to calculate from the initialization of the module, as it it the sum of its inputs widths.

# Use: 
Run Generate to show the usage message, which briefly explains valid arguments that can be passed into the program. **inputs** sets the number of inputs the top level module will contain, **bit_max** sets the upper limit of the largest possible top level input bit-width, with the lowest being half of this. **levels** determines how many hierarchical levels will be created, choose 1 for a simple flat design, **split** determines how much smaller each subsequent submodule will be from its predecessor, with the submodule **input** and **bit_max** being divided by **split**. **budget** is how many iterations of the function creation loop can possibly be run, effectively this determines how long potential functions can be, a good range is between 2-5, though more complex functions can be created, though this makes is more difficult to debug.
