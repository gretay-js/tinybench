SHELL=bash

clz:
	dune build clz.exe --profile standard
	cp _build/default/clz.exe bin/clz_standard.exe
	objdump -d bin/clz_standard.exe > obj/clz_standard.exe.s
	dune build clz.exe --profile lzcnt
	cp _build/default/clz.exe bin/clz_lzcnt.exe
	objdump -d bin/clz_lzcnt.exe > obj/clz_lzcnt.exe.s

clean:
	rm bin/* obj/*

.PHONY: clz clean
