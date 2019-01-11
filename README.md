# Minimalistic microbenchmarks for new intrinsics

- clz: count leading zeros in an integer
- popcnt: count number of bits set in an integer

### Target: amd64
instructions:
- clz using lzcnt vs bsr 
