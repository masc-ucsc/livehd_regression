#------------------------------------------------------------------------------
#  Makefile for HDLGen
#
#  make                makes Generate
#  make clean          removes binary files
#  make check          runs valgrind on Generate
#------------------------------------------------------------------------------
Generate : Generate.o HDLGen.o
	g++ -std=c++11 -Wall -o Generate Generate.o HDLGen.o
Generate.o : HDLGen.h Generate.cpp
	g++ -std=c++11 -Wall -c Generate.cpp
HDLGen.o : HDLGen.h HDLGen.cpp
	g++ -std=c++11 -Wall -c HDLGen.cpp
clean :
	rm -f Generate Generate.o Generate Generate.o HDLGen.o
check : Generate
	valgrind --leak-check=full Generate