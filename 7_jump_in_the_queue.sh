#!/bin/bash
# Read the number of people 
read n
# Read the number of the 1st~nth person
read -a arr
# Read the position of the nth person jumping in queue
read x

# The position of the (x-n) person is moved one place after in order
for (( i = $n; i >= $x; i-- )); do
	arr[$i]=${arr[$[$i - 1]]}
done
# Jumping in the queue completed
arr[$[$x - 1]]=${arr[$n]}
# Remove the original position of the nth person
unset arr[$n]
# Output array
echo ${arr[*]}