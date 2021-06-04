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
  echo $pt
  # if [ ! -f generated/$pt.fir ] && [ "${pt: -4}" != ".fir" ]; then
    # echo "---------- Chisel Compilation: $pt.scala ----------"
    # rm -f chisel_bootstrap/src/main/scala/*.scala
    # cp $filename chisel_bootstrap/src/main/scala/
    # pushd .
    # cd chisel_bootstrap

    # # CHIRRTL PB
    # sbt "runMain chisel3.stage.ChiselMain --no-run-firrtl --chisel-output-file ${pt}.ch.pb --module ${pt}.${pt}"
    # mv $pt.ch.pb ../generated/

    # # CHIRRTL FIR
    # sbt "runMain chisel3.stage.ChiselMain --no-run-firrtl --module ${pt}.${pt}"
    # mv $pt.fir ../generated/

    # rm -f $pt.anno.json
    # rm -f $pt.v
    # rm -f chisel_bootstrap/src/main/scala/*.scala
    # popd
  # fi


  pt=$(basename "$filename" .fir) # ./foo/bar.scala -> bar
  echo "---------- Chirrtl Compilation: $pt.fir ----------"
  $FIRRTL_EXE -i   chirrtl_src/$pt.fir -X none --custom-transforms firrtl.transforms.WriteChPB
  $FIRRTL_EXE -i   chirrtl_src/$pt.fir -X verilog -o generated/${pt}.v
  $FIRRTL_EXE -i   chirrtl_src/$pt.fir -X high    -o generated/${pt}.hi.fir

  cp generated/${pt}.v    ~/livehd/inou/firrtl/tests/verilog_gld/
  cp circuit.ch.pb        ~/livehd/inou/firrtl/tests/proto/$pt.ch.pb
  cp chirrtl_src/$pt.fir  ~/livehd/inou/firrtl/tests/firrtl/
  cp chirrtl_src/$pt.fir  generated/

  mv circuit.ch.pb generated/$pt.ch.pb
  rm -f $pt.fir
  rm -f circuit.ch.pb

    # $FIRRTL_EXE -i ./firrtl_src/$pt.fir -X low
    # $FIRRTL_EXE -i ./firrtl_src/$pt.fir -X none --custom-transforms firrtl.transforms.WriteLowPB
    # mv $pt.lo.fir generated
    # mv circuit.lo.pb  generated/$pt.lo.pb
done
