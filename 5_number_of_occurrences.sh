#!/bin/bash
read n x
str=""
# concatenate numbers into a string
for (( i = 1; i <= $n; i++  )); do
    str=$str$i
done

# grep -o $x displays x; 
# wc -l counts number of x
echo $str | grep -o $x | wc -l