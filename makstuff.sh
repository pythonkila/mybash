#! /bin/bash

# Make folder and ech content !
cd ~
echo "Your present directory is ...."
pwd

# check if junk folder already exist !

if [ -d "punked" ]; then 
    rm -rf pun*
fi
mkdir nunked && chmod 664 nunked
