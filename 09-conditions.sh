#!/bin/bash
#echo "Enter a numer to check:"
#read NUM
#if [$NUM -lt 10]; then
# echo "$NUM is less than 10"
#elif [$NUM -eq 10]; then
# echo "$NUM is equals to 10"
#else
# echo "$NUM is greater than 10"
#fi 
# -gt greater than
# -eq equals to
# -ne not equal


#!/bin/bash

NUMBER=$1

if [ $NUMBER -lt 10 ]; then
    echo "Given number $NUMBER is less than 10"
elif [ $NUMBER -eq 10 ]; then
    echo "Given number $NUMBER is equal to 10"
else
    echo "Given number $NUMBER is greater than to 10"
fi

# -gt
# -eq
# -ne

