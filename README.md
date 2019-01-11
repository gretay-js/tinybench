# Minimalistic microbenchmarks for new intrinsics

- clz: count leading zeros in an integer
- popcnt: count number of bits set in an integer

### Target: amd64
instructions:
- clz using lzcnt vs bsr 


## Preliminary results

On Intel(R) Xeon(R) Gold 6144 CPU @ 3.50GHz
GenuineIntel-6-55

```
./bin/clz_standard.exe
12,368,959ns
./bin/clz_lzcnt.exe
4,949,284ns
./bin/popcnt_popcnt.exe
9,894,676ns
```
