#!/bin/bash -x
#Q1. Use Random Function ((RANDOM)) to get Single digit
echo $((RANDOM %10))

#Q2. Use Random to get Dice Number between 1 to 6
echo $(((RANDOM %6)+1))

#Q3.Add two Random Dice Number and Print the Result
dice1=$(((RANDOM %6)+1))
dice2=$(((RANDOM %6)+1))
sum=$(($dice1+$dice2))
echo "Sum of two Dices:$sum"

