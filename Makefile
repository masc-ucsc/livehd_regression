


setup: tools/firrtl/utils/bin/firrtl chipyard/chipyard.TestHarness.MegaBoomConfig.hi.fir

tools/firrtl/utils/bin/firrtl:
	cd tools ; ./setup.sh

chipyard/chipyard.TestHarness.MegaBoomConfig.hi.fir: tools/firrtl/utils/bin/firrtl
	make -C chipyard setup
	make -C chipyard generate

synthetic/generated/add_100.v:
	cd synthetic ; ./setup.sh

circt-fuzzer/firt_t1.orig.fir:
	cd circt-fuzzer ; ./setup.sh
