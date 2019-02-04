#!/bin/bash
#Author: Luke McConnell
#Date: 1/31/2019
echo "Enter a number: "
read numOne
echo "Enter a second number: "
read numTwo
sum=$(($numOne + $numTwo))
echo "The sum is: $sum"
let prod=numOne*numTwo
echo "The product is: $prod"
echo "File Name: $0"
echo "Command Line Argument 1: $1"
grep $1 $2    #here we are using grep and listing $1 as our pattern and $2 as our file to search
