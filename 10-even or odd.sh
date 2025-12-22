#!/bin/bash
echo "Enter a number:"
read NUM
if [ $NUM -eq 0]; then
 echo "Entered number $NUM is 0, which is neither odd nor even"
elif [ $(($NUM % 2)) -eq 0 ]; then
 echo "$NUM is even number"
else
  echo "$NUM is odd number"
fi