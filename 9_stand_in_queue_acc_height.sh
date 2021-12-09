#!/bin/bash
read n

for (( i = 0; i < $n; i++ )); do
	read h
	height[$i]=$h
done
# echo ${height[*]}

# Count number of people where there're equal number of 
# people in front of him who are higher than him and 
# behind him who are higher than him.
cnt=0
for (( i = 0; i < $n; i++ )); do
	before=0
	after=0
	current=${height[$i]}
	# Count the number of people who are before of him and higher than him
	for (( l = $[$i - 1]; l >= 0; l-- )); do
		left=${height[$l]}
		if [[ $left -gt $current ]]; then
			let before++
		fi
	done
	# Count the number of people behind him and higher than him
	for (( r = $[$i + 1]; r < $n; r++ )); do
		right=${height[$r]}
		if [[ $right -gt $current ]]; then
			let after++
		fi
	done
	# increase the count if the numbers are equal
	if [[ $before -eq $after ]]; then
		let cnt++
	fi
done
echo $cnt