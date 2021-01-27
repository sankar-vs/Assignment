#!/bin/bash -x
countHeads=0
countTails=0
while (( $countHeads<11 & $countTails<11 ))
do
        coinFlip=$((RANDOM %2))
        if (( ($coinFlip==0) )); then
                (( countTails++ ))
                echo "Tails"
        else
                (( countHeads++ ))
                echo "Heads"
        fi
done
echo "Heads:$countHeads"
echo "Tails:$countTails"
