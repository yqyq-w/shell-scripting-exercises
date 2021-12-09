#!/bin/bash
# convert 10.3 / 2.6 into 103/26 for calculation
read a b
echo $[($a * 10 + b) / 26]