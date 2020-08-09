#!/bin/bash -x
# code for flip coin simulation problem

echo "code for flip coin simulation"

check=$(( RANDOM%2 ))
if [[ $check -eq 1 ]]
then
	echo "Heads Winner"
else
	echo "Tails Winner"
fi
