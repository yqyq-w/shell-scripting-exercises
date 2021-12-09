#!/bin/bash
read L M

# Each line in the M lines contains two different integers, separated with space, 
# indicating the coordinates of the starting point and ending point of an area
# Remove the trees in these areas (including the two trees at the end points)
for (( i = 0; i < $M; i++ )); do 
		read start end
		for (( j = $start; j <= $end; j++ )); do
				arr[$j]=1
		done
done
# <= $L Calculate how many trees are left on the road after these trees are removed
count=0
for (( i = 0; i <= $L; i++ )); do
		if [[ arr[$i] -ne 1 ]]; then
				let count++
		fi
done
# Output the number of trees remaining on the road
echo $count