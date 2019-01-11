#!/usr/bin/env sh
set -x

./bin/clz_standard.exe
./bin/clz_lzcnt.exe

set +x

# EVENTS=`
#   `instructions,`
#   `task-clock

# #  `branches,`
#   # `branch-misses,`
#   # `bus-cycles,`
#   # `cache-misses,`
#   # `cache-references,`
#   # `cycles,`
#   # `ref-cycles,`
#   # `L1-dcache-load-misses,`
#   # `L1-dcache-loads,`
#   # `L1-dcache-stores,`
#   # `L1-icache-load-misses,`
#   # `branch-load-misses,`
#   # `branch-loads,`
#   # `dTLB-load-misses,`
#   # `dTLB-loads,`
#   # `dTLB-store-misses,`
#   # `dTLB-stores,`
#   # `iTLB-load-misses,`
#   # `iTLB-loads,`
#   # `alignment-faults,`
#   # `context-switches,`
#   # `cpu-clock,`
#   # `cpu-migrations,`
#   # `emulation-faults,`
#   # `major-faults,`
#   # `minor-faults,`
#   # `page-faults,`
 
# # taskset -c 2 perf stat -d bin/clz_standard.exe

# # perf stat -B -r 10 -e $EVENTS bin/clz_standard.exe

# # perf stat record -e $EVENTS bin/clz_lzcnt.exe
