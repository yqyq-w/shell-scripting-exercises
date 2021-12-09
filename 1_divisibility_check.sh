#!/bin/bash
read a b
# calculate with $[] 
if [[ $[${a} % ${b}] -eq 0 ]]; then
    echo "YES"
else
    echo "NO"
fi