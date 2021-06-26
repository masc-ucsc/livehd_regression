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

  pt=$(basename "$filename" .fir) # ./foo/bar.scala -> bar
  echo "---------- Chirrtl Compilation: $pt.fir ----------"
  $FIRRTL_EXE -i   chirrtl_src/$pt.fir -X none --custom-transforms firrtl.transforms.WriteChPB
  $FIRRTL_EXE -i   chirrtl_src/$pt.fir -X verilog -o generated/${pt}.v
  $FIRRTL_EXE -i   chirrtl_src/$pt.fir -X high    -o generated/${pt}.hi.fir

  cp generated/${pt}.v    ~/livehd/inou/firrtl/tests/verilog_gld/${pt}.gld.v
  cp circuit.ch.pb        ~/livehd/inou/firrtl/tests/proto/$pt.ch.pb
  cp chirrtl_src/$pt.fir  ~/livehd/inou/firrtl/tests/firrtl/
  cp chirrtl_src/$pt.fir  generated/

  mv circuit.ch.pb generated/$pt.ch.pb
  rm -f $pt.fir
  rm -f circuit.ch.pb

done
