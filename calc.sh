#!/bin/bash

# take the first input and assign it to variable x
x=$1

# take the second input and assign it to variable y
y=$2

# take the third input as an operation
operation=$3

# check if the numbers are integers or not, if not will exit.
if ! [[ "$x" =~ ^-?[0-9]+$ && "$y" =~ ^-?[0-9]+$ ]]; then
    echo "Err. One of the numbers are not integer."
    exit 1
fi

# doign the operation either addition or subtraction.
dele=$((x-y))

add=$((x+y))

# check either --addition option or --deletion option is entered.
if [ "$operation" = "--addition" ]; then
	echo $add                             #print add result
	echo $add > output.txt                #print add result to output file
elif [ "$operation" = "--deletion" ]; then
	echo $dele			      #print dele result
	echo $dele > output.txt               #print dele result to ouput file
else
	echo "Invalid Option. Either --addition or --deletion is allowed." # error entered option
fi

