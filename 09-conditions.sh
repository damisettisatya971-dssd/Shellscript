#!/bin/bash
echo "Enter a numer to check:"
read NUM
if [ "$NUM" -lt 10 ]; then
 echo "$NUM is less than 10"
elif [ "$NUM" -eq 10 ]; then
 echo "$NUM is equals to 10"
else
 echo "$NUM is greater than 10"
fi 
# -gt greater than
# -eq equals to
# -ne not equal




