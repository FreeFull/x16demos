all: life.prg
clean:
	rm *.prg
run: all
	x16emu -prg life.prg -run
.PHONY: all clean run

%.prg: %.a vera.inc
	acme -f cbm --cpu 65c02 -DMACHINE_C64=0 -o $@ $<
