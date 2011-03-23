#! /bin/sh

QUIET=-q
# QUIET=
SEED=1

# rgb tests that yield a number and don't take too long
../dieharder/dieharder $QUIET -r 3 -S $SEED -n 2 
../dieharder/dieharder $QUIET -r 3 -S $SEED -n 3 
../dieharder/dieharder $QUIET -r 3 -S $SEED -n 4 
../dieharder/dieharder $QUIET -r 3 -S $SEED -n 5 
../dieharder/dieharder $QUIET -r 3 -S $SEED -n 6 
../dieharder/dieharder $QUIET -r 4 -S $SEED -n 2 
../dieharder/dieharder $QUIET -r 4 -S $SEED -n 3 
../dieharder/dieharder $QUIET -r 4 -S $SEED -n 4 
../dieharder/dieharder $QUIET -r 4 -S $SEED -n 5 
../dieharder/dieharder $QUIET -r 5 -S $SEED -n 2 
../dieharder/dieharder $QUIET -r 5 -S $SEED -n 3 
../dieharder/dieharder $QUIET -r 5 -S $SEED -n 4 
../dieharder/dieharder $QUIET -r 5 -S $SEED -n 5 
../dieharder/dieharder $QUIET -r 5 -S $SEED -n 6 
# dieharder tests
../dieharder/dieharder $QUIET -d 1 -S $SEED
../dieharder/dieharder $QUIET -d 2 -S $SEED
../dieharder/dieharder $QUIET -d 3 -S $SEED
../dieharder/dieharder $QUIET -d 4 -S $SEED
../dieharder/dieharder $QUIET -d 5 -S $SEED
../dieharder/dieharder $QUIET -d 6 -S $SEED
../dieharder/dieharder $QUIET -d 7 -S $SEED
../dieharder/dieharder $QUIET -d 8 -S $SEED
../dieharder/dieharder $QUIET -d 9 -S $SEED
../dieharder/dieharder $QUIET -d 10 -S $SEED
../dieharder/dieharder $QUIET -d 11 -S $SEED
../dieharder/dieharder $QUIET -d 12 -S $SEED
../dieharder/dieharder $QUIET -d 13 -S $SEED
../dieharder/dieharder $QUIET -d 14 -S $SEED
../dieharder/dieharder $QUIET -d 15 -S $SEED
../dieharder/dieharder $QUIET -d 16 -S $SEED
../dieharder/dieharder $QUIET -d 17 -S $SEED
../dieharder/dieharder $QUIET -d 18 -S $SEED
# sts tests
../dieharder/dieharder $QUIET -s 1 -S $SEED
../dieharder/dieharder $QUIET -s 2 -S $SEED
../dieharder/dieharder $QUIET -s 3 -S $SEED
# "user" tests
../dieharder/dieharder $QUIET -u 1 -S $SEED
