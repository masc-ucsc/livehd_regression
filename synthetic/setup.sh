#!/bin/bash

mkdir -p generated
cd generated
for a in ../scripts/*.py
do
  python3 $a
done

cd ..
if [ ! -f "../tools/chisel3/README.md" ]; then
  echo "RUN tools setup first"
  pushd .
  cd ../tools
  ./setup.sh
  popd
fi


# Chisel Related
FIRRTL_EXE=../tools/firrtl/utils/bin/firrtl


if [ $# -eq 0 ]; then
  inputs=generated/*.scala
else
  inputs=$@
fi


#bash natural sort
pts=$(echo $inputs | tr " " "\n" | sort -V)
echo $pts



echo "-------------------- Chisel3 Full(Chisel -> ${FIRRTL_LEVEL}.v})-------------" > ../../stat.chisel3-full
echo "-------------------- Chisel3     (Chisel -> ${FIRRTL_LEVEL}.pb)-------------" > ../../stat.chisel3-pb
echo "-------------------- Chisel3     (Chisel -> .fir)-------------"               > ../../stat.chisel3-fir

for filename in ${pts}
do
  pt=$(basename "$filename" .scala) # ./foo/bar.scala -> bar 
  # compile only if foo.fir is not exists
  if [ ! -f generated/$pt.fir ]; then
    rm -f ../fir_regression/chisel_bootstrap/src/main/scala/*.scala
    cp $filename ../fir_regression/chisel_bootstrap/src/main/scala/
    pushd .
    cd ../fir_regression/chisel_bootstrap
    rm -f *.json 

    # Chisel full compilation (no ch.pb generation here)
    echo "---------- Chisel -> Verilog: $pt.scala ----------"
    sbt -mem 36000 "runMain chisel3.stage.ChiselMain --module ${pt}.${pt}" > pp
    echo "      ${pt}"      >> ../../../stat.chisel3-full
    grep "Total time" pp    >> ../../../stat.chisel3-full
    mv $pt.fir ../../synthetic/generated
    mv $pt.v   ../../synthetic/generated

    # Chirrtl protobuf generation
    echo "---------- Chisel -> ch.pb: $pt.scala ----------"
    sbt -mem 36000 "runMain chisel3.stage.ChiselMain --no-run-firrtl --chisel-output-file ${pt}.ch.pb --module ${pt}.${pt}" >pp2
    echo "      ${pt}"      >> ../../../stat.chisel3-pb
    grep "Total time" pp2   >> ../../../stat.chisel3-pb
    mv $pt.ch.pb ../../synthetic/generated


    # Chirrtl generation
    echo "---------- Chisel -> .fir: $pt.scala ----------"
    sbt -mem 36000 "runMain chisel3.stage.ChiselMain --no-run-firrtl --chisel-output-file ${pt}.fir   --module ${pt}.${pt}" >pp3
    echo "      ${pt}"      >> ../../../stat.chisel3-fir
    grep "Total time" pp3   >> ../../../stat.chisel3-fir
    rm -f *.fir
    rm -f *.anno.json
    popd

    # not break down firrtl lowering process for now 
    # echo "---------- Chirrtl Compilation: $pt.fir ----------"
    # $FIRRTL_EXE -i   generated/$pt.fir -X verilog -o generated/${pt}.v
    # $FIRRTL_EXE -i   generated/$pt.fir -X high    -o generated/${pt}.hi.fir
    # $FIRRTL_EXE -i   generated/$pt.fir -X none --custom-transforms firrtl.transforms.WriteHighPB
    # mv circuit.hi.pb generated/$pt.hi.pb
    # rm -f $pt.fir

    # $FIRRTL_EXE -i ./firrtl_src/$pt.fir -X low
    # $FIRRTL_EXE -i ./firrtl_src/$pt.fir -X none --custom-transforms firrtl.transforms.WriteLowPB
    # mv $pt.lo.fir generated
    # mv circuit.lo.pb  generated/$pt.lo.pb


  fi
done


