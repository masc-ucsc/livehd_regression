#------------------------------------------------------------------------------
#  Makefile for HDLGen
#
#  make                makes Generate
#  make clean          removes binary files
#  make check          runs valgrind on Generate
#------------------------------------------------------------------------------

CC = g++
CFLAGS = -std=c++11 -Wall

Generate : Generate.o HDLGen.o FunctionGen.o
	$(CC) $(CFLAGS) -o Generate Generate.o HDLGen.o FunctionGen.o
Generate.o : HDLGen.h Generate.cpp 
	$(CC) $(CFLAGS) -c Generate.cpp
HDLGen.o : HDLGen.h HDLGen.cpp FunctionGen.h
	$(CC) $(CFLAGS) -c HDLGen.cpp FunctionGen.h
FunctionGen.o : FunctionGen.h FunctionGen.cpp
	$(CC) $(CFLAGS) -c FunctionGen.cpp
clean :
	rm -f Generate Generate.o HDLGen.o FunctionGen.o
check : Generate
	valgrind --leak-check=full Generate