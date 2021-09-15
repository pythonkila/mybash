#! /bin/bash
# Write a bash script using Vim editor that checks all the processes running 
# for the current user (USER env var) and prints out the processes in console.
# Hint: use ps aux command and grep for the user

clear
p=3
echo "Identifying all processes running for $USER"
echo "Enter m to sort processes by memory or c to sort by CPU consumption (sort by CPU is default) "

read x 

if [[ "$x" == m ]]
 then p=4
 echo "Sorting by Memory utilisation!"
else
 x=c
 echo "Sorting by CPU Utilisation!"
fi 

ps -aux | { head -1; grep $USER | sort -k $p ;}

