#!/bin/bash -x
for (( count=1 ; count<=5 ; count++ ))
do
        coinFlip=$((RANDOM %2))
        if (( ($coinFlip==0) )); then
                echo "Tails"
        else
                echo "Heads"
        fi
done
