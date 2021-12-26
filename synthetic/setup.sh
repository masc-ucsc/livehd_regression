#!/bin/bash
# export SBT_OPTS="-Xmx64G -Xms32G -Xss16G -XX:MaxMetaspaceSize=16384M" 

# export SBT_OPTS="-Xms512M -Xmx1024M -Xss2M -XX:MaxMetaspaceSize=1024M"
export JAVA_OPTS=""
export SBT_OPTS=""

# mkdir -p generated
# cd generated
# for a in ../scripts/*.py
# do
#   python3 $a
# done
#
# cd ..

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
    # sbt -J-Xmx64g  "runMain chisel3.stage.ChiselMain --module ${pt}.${pt}" > pp
    sbt -J-Xmx4G -J-Xms4G "runMain chisel3.stage.ChiselMain --module ${pt}.${pt}" > pp
    echo "      ${pt}"      >> ../../../stat.chisel3-full
    grep "Total time" pp    >> ../../../stat.chisel3-full
    mv $pt.fir ../../synthetic/generated
    mv $pt.v   ../../synthetic/generated

    # Chirrtl protobuf generation
    echo "---------- Chisel -> ch.pb: $pt.scala ----------"
    # JAVA_OPT="-Xmx64G -Xms32G -Xss16G -XX:MaxMetaspaceSize=16384M" sbt "runMain chisel3.stage.ChiselMain --no-run-firrtl --chisel-output-file ${pt}.ch.pb --module ${pt}.${pt}" > pp2
    # sbt -J-Xmx64g  "runMain chisel3.stage.ChiselMain --no-run-firrtl --chisel-output-file ${pt}.ch.pb --module ${pt}.${pt}" > pp2
    sbt -J-Xmx4G -J-Xms4G "runMain chisel3.stage.ChiselMain --no-run-firrtl --chisel-output-file ${pt}.ch.pb --module ${pt}.${pt}" > pp2
    echo "      ${pt}"      >> ../../../stat.chisel3-pb
    grep "Total time" pp2   >> ../../../stat.chisel3-pb
    mv $pt.ch.pb ../../synthetic/generated


    # Chirrtl generation
    echo "---------- Chisel -> .fir: $pt.scala ----------"
    # JAVA_OPT="-Xmx64G -Xms32G -Xss16G -XX:MaxMetaspaceSize=16384M" sbt "runMain chisel3.stage.ChiselMain --no-run-firrtl --chisel-output-file ${pt}.fir   --module ${pt}.${pt}" >pp3
    # sbt -J-Xmx64g -mem 16384 "runMain chisel3.stage.ChiselMain --no-run-firrtl --chisel-output-file ${pt}.fir   --module ${pt}.${pt}" >pp3
    # sbt -J-Xmx64g  "runMain chisel3.stage.ChiselMain --no-run-firrtl --chisel-output-file ${pt}.fir   --module ${pt}.${pt}" >pp3
    sbt -J-Xmx4G -J-Xms4G "runMain chisel3.stage.ChiselMain --no-run-firrtl --chisel-output-file ${pt}.fir   --module ${pt}.${pt}" >pp3
    echo "      ${pt}"      >> ../../../stat.chisel3-fir
    grep "Total time" pp3   >> ../../../stat.chisel3-fir
    rm -f *.fir
    rm -f *.anno.json
    popd

  fi
done


python3 ./cal_fir2verilog.py ../../stat.chisel3-full ../../stat.chisel3-fir
mv stat.fir2verilog ../../
