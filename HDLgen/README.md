HDLgen Readme

HDLGen is written for use with LiveHD and for affiliates of MASC (Micro Architecture Santa Cruz)

This scipt is meant to produce random equivalent circuits in verilog, chisel and pyrope.
Due to pyrope being is ongoing development, cases generated for it will be significantly less complex than for only verilog/chisel circuits.

# Use: 
[Optional arguments]:
--help: Print this message
--allow_constants: Includes the use of constants in generated files
--memory: Includes a second output sourced from a small SRAM module on the top level
--entropy: Produces intentionally incorrect code by adding in combinational loops
--split: Divisor of size and number of inputs/outputs of a submodule relative to its parent (default=2)
--seed: Seed for the RNG aspect of the generation (default=123457)
[Required arguments]:
--levels: Amount of levels of heirarchy created (size of submodules determined by --split)
--bit_max: Upper bound of largest inputs used in top level, smallest input size is half of bit_max
--budget: Maximum length of expressions, the larger the budget the more complex the circuits generated
--inputs: Amount of inputs assigned to the top level, creates that many internal experessions linked to output
[Example Usage]:
./Generate --inputs=3 --budget=4 --bit_max=5 --levels=3 --split=4 --allow_constants