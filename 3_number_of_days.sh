#!/bin/bash
# read year & month
read y m
# use an array to store the number of days in each month
daysInMonth=(31 28 31 30 31 30 31 31 30 31 30 31)
# Determine whether it is a leap year February: (y % 4 == 0) && (y % 100 != 0) && (m == 2)
function isLeapFeb() {
	## if can be divisible by 400, is leap year
    if [[ $[$1 % 400] -eq 0 ]]; then
        if [[ $2 -eq 2 ]]; then
            return 0
        fi
    fi
    ## others that are divisible by 4 but not by 100 are leap years
    if [[ $[$1 % 4] -eq 0 ]]; then
        if [[ $[$1 % 100] -ne 0 ]]; then
            if [[ $2 -eq 2 ]]; then
                return 0
            fi
        fi
    fi
    return 1
}

# starting index is 0 in bash
idx=$[ ${m} - 1]

# determine whether it is a leap year February
isLeapFeb ${y} ${m}

# If yes, the value of $? will be equal to 0, then output 29
if [[ $? -eq 0 ]]; then
    echo 29
else
    # If not, output the corresponding # of days in the array
    echo ${daysInMonth[${idx}]}
fi