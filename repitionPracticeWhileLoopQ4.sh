#!/bin/bash -x
total=100
while (( $total<200 & $total>0))
do
        gamble=$((RANDOM %2))
        if (( ($gamble==0) )); then
                total=$(($total-1))
        else
                (( countHeads++ ))
                total=$(($total+1))
        fi
done
echo "Total:$total"
