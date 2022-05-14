#!/bin/bash

# prompt user for name of directory to be created.
echo "Enter a directory name to be created:"
read NW_DIR

# save the current location
ORIG_DIR=$(pwd)

# check if directory already exist before proceeding
[-d $ORIG_DIR ] && echo "$ORIG_DIR already exists, exiting.." && exit
mkdir $NW_DIR

# Changes to the new directory and prints out where it is using pwd
cd $NW_DIR
pwd

# Using touch, creates several empty files and runs ls on them to verify they are empty
for n in 1 2 3 4
do 
	touch file$n
done
ls file?
# Puts some content in them using echo and redirection.

for names in file*
do 
	echo This file is named $names > $names
done

# Displays thier content using cat

cat file?

# Says goodbye to the user and cleans up after itself.

cd $ORIG_DIR
rm -rf $NW_DIR
echo "bye.."

