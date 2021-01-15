

hi_fir := $(patsubst %.hi.fir.gz,%.hi.fir ,$(wildcard *.hi.fir.gz))

.NOTPARALLEL: $(hi_pb) $(lo_pb)

setup: $(hi_fir)

hi_pb  := $(patsubst %.hi.fir,%.hi.pb ,$(wildcard *.hi.fir))
lo_pb  := $(patsubst %.hi.fir,%.lo.pb ,$(wildcard *.hi.fir))
lo_fir := $(patsubst %.hi.fir,%.lo.fir,$(wildcard *.hi.fir))

generate: $(hi_pb) $(lo_pb) $(lo_fir)

%.hi.fir:
	gzip -cd < $(subst hi.fir,hi.fir.gz,$@) >$@

%.v:%.fir
	../tools/firrtl/utils/bin/firrtl -i $< -X verilog -o $@

# FIXME: Having output as circuit.hi.pb blocks the option of make -j
%.hi.pb:
	../tools/firrtl/utils/bin/firrtl -i $(subst hi.pb,hi.fir,$@) -X none --custom-transforms firrtl.transforms.WriteHighPB
	mv circuit.hi.pb $@

# FIXME: Having output as circuit.hi.pb blocks the option of make -j
%.lo.pb:
	../tools/firrtl/utils/bin/firrtl -i $(subst lo.pb,hi.fir,$@) -X none --custom-transforms firrtl.transforms.WriteLowPB
	mv circuit.lo.pb $@

%.lo.fir:
	../tools/firrtl/utils/bin/firrtl -i $(subst lo.fir,hi.fir,$@) -X low -o $@

clean:
	rm -f chipyard.*.v
	rm -f chipyard.*.fir
	rm -f chipyard.*.pb
	rm -f circuit.*pb
