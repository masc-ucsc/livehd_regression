#!/bin/bash

mkdir -p generated
cd generated
for a in ../scripts/*.py
do
  python3 $a
done

if [ ! -d ../../tools/chisel3 ]; then
  cd ../../tools
  pwd
  ./setup.sh
  cd ../synthetic/generated
  pwd
fi


# Chisel Related
FIRRTL_EXE=../../tools/firrtl/utils/bin/firrtl
for filename in *.scala
do
  pt=$(basename "$filename" .scala) # ./foo/bar.scala -> bar 
  # compile only if foo.fir is not exists
  if [ ! -f $pt.hi.fir ]; then
    echo "---------- Chisel Compilation: $pt.scala ----------"
    rm -rf ../../tools/chisel3/src/main/scala/SNX*
    mkdir -p ../../tools/chisel3/src/main/scala/$pt 

    cp -f $pt.scala ../../tools/chisel3/src/main/scala/$pt
    cd ../../tools/chisel3 
    sbt "runMain chisel3.stage.ChiselMain --module ${pt}.${pt}"
    mv $pt.fir ../../synthetic/generated
    rm -f $pt.anno.json
    rm -f $pt.v
    cd ../../synthetic/generated
  fi
done


for filename in *.fir 
do
  pt=$(basename "$filename" .fir) # ./foo/bar.fir -> bar 
  pt=$(basename "$pt" .hi)  # ./foo/bar.fir -> bar 
  # compile only if foo.scala is not exists
  if [ ! -f $pt.hi.fir ]; then
    echo $pt
    echo "---------- Chirrtl Compilation: $pt.fir ----------"

    $FIRRTL_EXE -i   $pt.fir -X verilog
    $FIRRTL_EXE -i   $pt.fir -X high
    $FIRRTL_EXE -i   $pt.fir -X none --custom-transforms firrtl.transforms.WriteHighPB
    mv circuit.hi.pb $pt.hi.pb

    rm -f $pt.fir
    # $FIRRTL_EXE -i $pt.fir -X low
    # $FIRRTL_EXE -i $pt.fir -X none --custom-transforms firrtl.transforms.WriteLowPB
  fi
done



