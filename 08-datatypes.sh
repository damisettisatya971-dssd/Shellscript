#!/bin/bash
n1=145
n2=55
F3="Priyanka"
Flowers=("Jasmine" "Lilly" "Rose") #size=3, max index=2 index starts with 0
sum=$(($n1+$n2))
echo "Sum of the nubers is $sum"
echo "The first flower is ${Flowers[0]}"
echo "All flowers are ${Flowers[@]}"
echo "The second flower is ${Flowers[1]}"
echo "The third flower is ${Flowers[2]}"