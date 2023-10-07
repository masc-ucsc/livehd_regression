#------------------------------------------------------------------------------
#  Makefile for HDLGen
#
#  make                makes Generate
#  make clean          removes binary files
#------------------------------------------------------------------------------

CC = g++
CFLAGS = -std=c++11 -Wall -g
INC = -I./include
OBJDIR=include

Generate : Generate.o HDLGen.o FunctionGen.o
	$(CC) $(CFLAGS) $(INC) -o Generate Generate.o HDLGen.o FunctionGen.o
$(OBJDIR)/Generate.o : include/HDLGen.h Generate.cpp
	$(CC) -o $@ $(CFLAGS) -c Generate.cpp
$(OBJDIR)/HDLGen.o : include/HDLGen.h HDLGen.cpp include/FunctionGen.h
	$(CC) -o $@  $(CFLAGS) -c HDLGen.cpp include/FunctionGen.h
$(OBJDIR)/FunctionGen.o : include/FunctionGen.h FunctionGen.cpp
	$(CC) -o $@ $(CFLAGS) -c FunctionGen.cpp
clean :
	rm -f Generate *.o random* *.v *.prp *.scala
