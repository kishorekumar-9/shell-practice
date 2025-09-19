#!/bin/bash


number1=250
number2=450

TIMESTAMP=$(date)
echo "script executed at: $TIMESTAMP"
sum=$(($number1+number2))

echo "sum of $number1 and $number2 is: $sum"