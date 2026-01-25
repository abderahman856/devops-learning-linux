#!/bin/bash

read -p "Enter first number: " num1
read -p "Enter second number: " num2

ADD=$(( num1 + num2 ))
SUB=$(( num1 - num2 ))
MUL=$(( num1 * num2 ))


if [ "$num2" -eq 0 ]; then
    echo "Results:"
    echo "$num1 + $num2 = $ADD"
    echo "$num1 - $num2 = $SUB"
    echo "$num1 * $num2 = $MUL"
    echo "Division by zero is not allowed"
else
    # 3. Only divide if it's safe!
    DIV=$(( num1 / num2 ))
    echo "Results:"
    echo "$num1 + $num2 = $ADD"
    echo "$num1 - $num2 = $SUB"
    echo "$num1 * $num2 = $MUL"
    echo "$num1 / $num2 = $DIV"
fi
