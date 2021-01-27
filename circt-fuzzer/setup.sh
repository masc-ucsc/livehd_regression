#!/bin/bash

if [ -z "circt-fuzzer/package.json" ]; then
  git clone https://github.com/drom/circt-fuzzer.git
  cd circt-fuzzer
  npm install
  cd ../
fi

for ((s=1; s<10 ; s++ ))
do
  echo "Building test "${s}" out of 100"
  ./circt-fuzzer/bin/cli.js --seed $s -z fir >fir_t${s}.orig.fir

	../tools/firrtl/utils/bin/firrtl -i fir_t${s}.orig.fir -X verilog -o fir_t${s}.v
	../tools/firrtl/utils/bin/firrtl -i fir_t${s}.orig.fir -X low  -o fir_t${s}.lo.fir

	../tools/firrtl/utils/bin/firrtl -i fir_t${s}.orig.fir --custom-transforms firrtl.transforms.WriteLowPB
  mv circuit.lo.pb fir_t${s}.lo.pb

  # circt only generates low level for the moment, no need these lines

	#../tools/firrtl/utils/bin/firrtl -i fir_t${s}.orig.fir -X high -o fir_t${s}.hi.fir

	#../tools/firrtl/utils/bin/firrtl -i fir_t${s}.orig.fir --custom-transforms firrtl.transforms.WriteHighPB
  #mv circuit.hi.pb fir_t${s}.hi.pb
done

