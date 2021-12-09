#!/bin/bash
read n

# Initialize the number of ways to walk to the 1st and 2nd floor depending on the situation
storey[0]=1;
if [[ $n -gt 1 ]]; then
	storey[1]=2;
fi

# Calculate and save the number of ways to walk from floor 3 to floor n
for (( i = 2; i < $n; i++ )); do
	storey[$i]=$[${storey[$[$i - 1]]} + ${storey[$[$i - 2]]}]
done

# Output number of ways to go to floor 1, 2, ... n
echo ${storey[*]}