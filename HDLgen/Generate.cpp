//-----------------------------------------------------------------------------
// Mark Zakharov
// Generate.cpp
// Client for HDLGen
//-----------------------------------------------------------------------------
#include <string>
#include <iostream>
#include <sys/stat.h>
#include <stdlib.h>    /* for exit */
#include <getopt.h>
#include "include/HDLGen.h"

using namespace std;

static const char *usageReport = 
"Usage:\n \
HDLGen is written for use with LiveHD and for affiliates of MASC (Micro Architecture Santa Cruz)\n \
[Optional arguments]:\n \
--help: Print this message\n \
--allow_constants: Includes the use of constants in generated files\n \
--memory: Includes a second output sourced from a small SRAM module on the top level\n \
--entropy: Produces intentionally incorrect code by adding in combinational loops\n \
--split: Divisor of size and number of inputs/outputs of a submodule relative to its parent (default=2)\n \
--seed: Seed for the RNG aspect of the generation (default=123457)\n \
[Required arguments]:\n \
--levels: Amount of levels of heirarchy created (size of submodules determined by --split)\n \
--bit_max: Upper bound of largest inputs used in top level, smallest input size is half of bit_max\n \
--budget: Maximum length of expressions, the larger the budget the more complex the circuits generated\n \
--inputs: Amount of inputs assigned to the top level, creates that many internal experessions linked to output\n \
[Example Usage]:\n \
./Generate --inputs=3 --budget=4 --bit_max=5 --levels=3 --split=4 --allow_constants\n";

int main(int argc, char *argv[]){	
	int inputs = 0, budget = 0, bit_max = 0, levels = 0;

	// Default values
	uint32_t seed = 123457;
	int split = 2;
	bool allow_constants = false, memory = false, entropy = false;
    std::string name = "random_verilog";

	int c = 0;

	while(1) {
		int option_index = 0;

		static struct option long_options[] =
		{
		    {"inputs", required_argument, NULL, 'i'},
		    {"budget", required_argument, NULL, 'b'},
		    {"bit_max", required_argument, NULL, 'm'},
		    {"levels", required_argument, NULL, 'l'},
		    {"seed", required_argument, NULL, 's'},
		    {"split", required_argument, NULL, 'S'},
		    {"name", required_argument, NULL, 'n'},
		    {"allow_constants", no_argument, NULL, 'c'},
		    {"memory", no_argument, NULL, 'M'},
		    {"entropy", no_argument, NULL, 'e'},
		    {"help", no_argument, NULL, 'h'},
		    {NULL, 0, NULL, 0}
		};

		c = getopt_long(argc, argv, "",
                 long_options, &option_index);
        if (c == -1)
            break;

		switch (c) {
	       	case('i') :
	       		if (inputs) {
	       			cout << "Error: passed in arguments for inputs more than once, program end" << endl;
	       			exit(EXIT_FAILURE);
	       		}
	       		inputs = (int)strtol(optarg, NULL, 10);
	       		break;
	       	case('b') :
	       		if (budget) {
	       			cout << "Error: passed in arguments for budget more than once, program end" << endl;
	       			exit(EXIT_FAILURE);
	       		}
	       		budget = (int)strtol(optarg, NULL, 10);
	       		break;
	       	case('m') :
	       		if (bit_max) {
	       			cout << "Error: passed in arguments for bit_max more than once, program end" << endl;
	       			exit(EXIT_FAILURE);
	       		}
	       		bit_max = (int)strtol(optarg, NULL, 10);
	       		break;
	       	case('l') :
	       		if (levels) {
	       			cout << "Error: passed in arguments for levels more than once, program end" << endl;
	       			exit(EXIT_FAILURE);
	       		}
	       		levels = (int)strtol(optarg, NULL, 10);
	       		break;
	       	case('s') :	//seed
	       		seed = (uint32_t)strtol(optarg, NULL, 10);
	       		break;
	       	case('S') :	//split
	       		split = (int)strtol(optarg, NULL, 10);
	       		break;
	       	case('c') :
	       		allow_constants = true;
	       		break;
	       	case('M') :
	       		memory = true;
	       		break;
	       	case('e') :
	       		entropy = true;
	       		break;
	       	case('n') :
                name = optarg;
	       		break;
	        case('h') :	//help
	        	cout << usageReport << endl;
	        	break;
	        case '?' :
	            break;
	        default :
            	cout << "?? getopt returned character code 0" << c << endl;
            	break;
        }
    }

    if (!inputs && !budget && !bit_max && !levels) {
    	cout << usageReport << endl;
    	exit(EXIT_FAILURE);
    }

    if (inputs <= 0) {
    	cout << "Error: failure to specify valid number of inputs, program end" << endl;
    	exit(EXIT_FAILURE);
    }
    if (budget <= 0) {
    	cout << "Error: failure to specify valid budget, program end" << endl;
    	exit(EXIT_FAILURE);
    }
    if (bit_max <= 0) {
    	cout << "Error: failure to specify valid bit_max, program end" << endl;
    	exit(EXIT_FAILURE);
    }
    if (levels <= 0) {
    	cout << "Error: failure to specify valid number of levels, program end" << endl;
    	exit(EXIT_FAILURE);
    }

	Logger* chis = new Logger("randomchisel.scala");
	Logger* pyro = new Logger("randompyrope.prp");
	Logger* veri = new Logger(name + ".v");

	Circuit* test1 = new Circuit(name, chis, pyro, veri, bit_max, inputs, levels, budget, split, entropy, allow_constants);

    // success - creates files
    createHierarchy(test1, seed);
    exit(EXIT_SUCCESS);
}
