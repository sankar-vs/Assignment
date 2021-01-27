#!/bin/bash -x
read -p "Enter three numbers: " a b c
output1=`awk 'BEGIN{print '$a'+'$b'*'$c'}'`
echo "a+b*c:"$output1		#$(($a+$b*$c))
output2=`awk 'BEGIN{print '$a'%'$b'+'$c'}'`
echo "a%b+c:"$output2		#$(($a%$b+$c))
output3=`awk 'BEGIN{print '$c'+'$a'/'$b'}'`
echo "c+a/b:"$output3		#$(($c+$a/$b))
output4=`awk 'BEGIN{print '$a'*'$b'+'$c'}'`
echo "a*b+c:"$output4		#$(($a*$b+$c))
if (( ($a>$b) & ($a>$c) )); then
	    max=$a
elif (( ($b>$a) & ($b>$c) )); then
	    max=$b
else
	    max=$c;
fi
if (( ($a<$b) & ($a<$c) )); then
	    min=$a
elif (( ($b<$a) & ($b<$c) )); then
	    min=$b
else
	    min=$c;
fi
	echo "Max:$max"
	echo "Min:$min"
