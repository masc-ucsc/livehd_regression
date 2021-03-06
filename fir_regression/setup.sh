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

if [ $# -eq 0 ]; then
  inputs=chisel_src/*.scala
else
  inputs=$@
fi

for filename in ${inputs}
do
  pt=$(basename "$filename" .scala) # ./foo/bar.scala -> bar
  # compile only if foo.fir is not exists
  if [ ! -f generated/$pt.fir ]; then
    echo "---------- Chisel Compilation: $pt.scala ----------"
    cp $filename chisel_bootstrap/src/main/scala/
    pushd .
    cd chisel_bootstrap

    # CHIRRTL PB
    #sbt "runMain chisel3.stage.ChiselMain --no-run-firrtl --chisel-output-file ${pt}.ch.pb --module ${pt}.${pt}"
    #mv $pt.ch.pb ../generated/

    # CHIRRTL FIR
    sbt "runMain chisel3.stage.ChiselMain --no-run-firrtl --module ${pt}.${pt}"
    mv $pt.fir ../generated/

    rm -f $pt.anno.json
    rm -f $pt.v
    rm -f chisel_bootstrap/src/main/scala/*.scala
    popd
  fi

  echo "---------- Chirrtl Compilation: $pt.fir ----------"

  $FIRRTL_EXE -i   generated/$pt.fir -X verilog -o generated/${pt}.v
  $FIRRTL_EXE -i   generated/$pt.fir -X high    -o generated/${pt}.hi.fir
  $FIRRTL_EXE -i   generated/$pt.fir -X none --custom-transforms firrtl.transforms.WriteHighPB
  mv circuit.hi.pb generated/$pt.hi.pb

    # $FIRRTL_EXE -i ./firrtl_src/$pt.fir -X low
    # $FIRRTL_EXE -i ./firrtl_src/$pt.fir -X none --custom-transforms firrtl.transforms.WriteLowPB
    # mv $pt.lo.fir generated
    # mv circuit.lo.pb  generated/$pt.lo.pb
done
