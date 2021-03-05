#!/bin/bash
if [ ! -d generated ]; then
  mkdir -p generated
fi

if [ ! -f "../tools/chisel3/README.md" ]; then
  echo "RUN tools setup first"
  pushd .
  cd ../tools/
  ./setup.sh
  popd
fi

FIRRTL_EXE=../tools/firrtl/utils/bin/firrtl

for filename in chisel_src/*.scala
do
  pt=$(basename "$filename" .scala) # ./foo/bar.scala -> bar
  # compile only if foo.fir is not exists
  if [ ! -f firrtl_src/$pt.fir ]; then
    echo "---------- Chisel Compilation: $pt.scala ----------"
    mkdir -p ../tools/chisel3/src/main/scala/$pt
    cp chisel_src/$pt.scala ../tools/chisel3/src/main/scala/$pt
    cd ../tools/chisel3

    sbt "runMain chisel3.stage.ChiselMain --module ${pt}.${pt}"

    mv $pt.fir ../../fir-regression/firrtl_src
    rm -f $pt.anno.json
    rm -f $pt.v
    cd ../../fir-regression
  fi
done

# useless chisel dierectories
rm -rf project
rm -rf target


for filename in firrtl_src/*.fir
do
  pt=$(basename "$filename" .fir) # ./foo/bar.fir -> bar
  # compile only if foo.fir is not exists
  if [ ! -f generated/$pt.hi.pb ]; then
    echo "---------- Chirrtl Compilation: $pt.fir ----------"

    $FIRRTL_EXE -i   firrtl_src/$pt.fir -X verilog
    $FIRRTL_EXE -i   firrtl_src/$pt.fir -X high
    $FIRRTL_EXE -i   firrtl_src/$pt.fir -X none --custom-transforms firrtl.transforms.WriteHighPB

    mv $pt.v         generated
    mv $pt.hi.fir    generated
    mv circuit.hi.pb generated/$pt.hi.pb
    rm -f $pt.fir

    # $FIRRTL_EXE -i ./firrtl_src/$pt.fir -X low
    # $FIRRTL_EXE -i ./firrtl_src/$pt.fir -X none --custom-transforms firrtl.transforms.WriteLowPB
    # mv $pt.lo.fir generated
    # mv circuit.lo.pb  generated/$pt.lo.pb
  fi
done
