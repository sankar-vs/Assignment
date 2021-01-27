#!/bin/bash -x
for (( count=1 ; count<=5 ; count++ ))
do
        num=$(((RANDOM %900)+100))
        if [ $count -eq 1 ]; then
                max=$num
                min=$num
        else
                if [ $num -gt $max ]; then
                        max=$num
                else
                        min=$num
                fi
        fi
done
echo $max
echo $min
