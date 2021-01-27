#!/bin/bash -x
read -p "Enter a number:" n
count=1
while (( count<=$((2**$n)) ))
do
        table=$((2*$count))
        if (( $table>256 )); then
                break
        else
                echo "2*$count:"$table
        fi
	(( count++ ))
done
