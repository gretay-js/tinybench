SHELL=bash

all: clz popcnt

clz:
	dune build clz.exe --profile standard
	cp _build/default/clz.exe bin/clz_standard.exe
	objdump -d bin/clz_standard.exe > obj/clz_standard.exe.s
	dune build clz.exe --profile lzcnt
	cp _build/default/clz.exe bin/clz_lzcnt.exe
	objdump -d bin/clz_lzcnt.exe > obj/clz_lzcnt.exe.s

popcnt:
	dune build popcnt.exe --profile popcnt
	cp _build/default/popcnt.exe bin/popcnt_popcnt.exe
	objdump -d bin/popcnt_popcnt.exe > obj/popcnt_popcnt.exe.s

clean:
	rm bin/* obj/*

.PHONY: clz clean popcnt all
