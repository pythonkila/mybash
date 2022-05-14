#! /bin/bash
#Asks the user for a number, which should be "1" or "2". Any other input should lead to an error report.
echo "Enter either 1 or 2.."
read NUM
 [ $NUM == "1" ] || [ $NUM == "2" ] || echo "You entered a wrong number "

#  &&  echo "correct number"

# Sets an environmental variable to be "Yes" if it is "1", and "No" if it is "2".


if [ $NUM == "1" ];
then
	CONVERT=Yes
elif [ $NUM == "2" ];
then
	CONVERT=No
fi
# Exports the environmental variable and displays it.

export CONVERT
echo $CONVERT
