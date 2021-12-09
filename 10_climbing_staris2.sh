#!/bin/bash
read N
# Initialize the number of ways to walk to the 2nd and 3rd floor
storey[1]=0;
storey[2]=1;
storey[3]=1;
# Calculate and save the number of ways to walk from 4th to Nth floor
for (( i = 4; i <= $N; i++ )); do
	storey[$i]=$[${storey[$[$i - 2]]} + ${storey[$[$i - 3]]}]
done
# Output how many ways to go to the Nth floor
echo ${storey[$N]}