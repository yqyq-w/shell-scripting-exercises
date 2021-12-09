#!/bin/bash
read n
# First judge whether it is a multiple of 7
# then judge whether it is a multiple of 2; 
# otherwise, output NO
if [[ $[$n % 7] -eq 0 ]]; then
    if [[ $[$n % 2] -ne 0 ]]; then
        echo "YES"
    else
        echo "NO"
    fi
else
    echo "NO"   
fi