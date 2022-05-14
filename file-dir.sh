#!/bin/bash
echo "Making folder.. "

mkdir newfold
cd newfold
pwd
for i in {1..4}; do touch to.$i; done
ls -l . 
for i in {1..4}; do cat $0 > to.$i; done

for i in {1..4}; do cat to.$i; done

echo "Goodbye... deleting files"

cd ..
# rm -rf newfold
