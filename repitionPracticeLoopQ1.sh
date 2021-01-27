#!/bin/bash -x
read -p "Enter a number:" n
for (( count=1 ; count<=$((2**$n)) ; count++ ))
do
        echo "2*$count="$((2*$count))
done

#!/bin/bash -x
read -p "Enter a number:" n
for (( count=1 ; count<=$((2**$n)) ; count++ ))
do
        table=$((2*$count))
        if (( $table>$((2**n)) )); then
                break
        else
                echo "2*$count:"$table
        fi
done
