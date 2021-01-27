#!/bin/bash -x
read -p "Enter a number:" n
harmonic=0
for (( count=1 ; count<=n ; count++ ))
do
        div=`awk 'BEGIN{print 1/'$count'}'` 			#((1/$count))
        harmonic=`awk 'BEGIN{print '$harmonic'+'$div'}'`	#(($harmonic+$div))
done
echo "The nth Harmonic Number:$harmonic"
# bc command not found not able to print the output in decimals
