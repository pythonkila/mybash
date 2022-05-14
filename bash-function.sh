#!/bin/bash
#Lab 15.5: Working with Functions

# Asks the user for a number (1, 2 or 3).
echo "Enter a number (1, 2 or 3)."
read NUM

# Calls a function with that number in its name. The function should display a message with its name included.

funct () {
	echo "The function is named: $NUM"
}
funct $NUM
