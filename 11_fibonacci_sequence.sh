#!/bin/bash
read n
# Initialize the first 2 items
fibonacci[1]=1;
fibonacci[2]=1;

# Calculate and save the first n items
for (( i = 3; i <= $n; i++ )); do
	fibonacci[$i]=$[${fibonacci[$[$i - 1]]} + ${fibonacci[$[$i - 2]]}]
done
# # Output the nth item
echo ${fibonacci[$n]}