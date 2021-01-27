#!/bin/bash -x
declare -A personBirthMonth jan feb mar apr may jun july aug sep oct nov dec
for (( counter=1 ; counter<=50 ; counter++ ))
do
        month=$(( (RANDOM %12)+1 ))
        personBirthMonth[$((counter))]=$month
done
for (( counter=1 ; counter<=50 ; counter++ ))
do
#echo ${personBirthMonth[$((counter))]}
        case ${personBirthMonth[$counter]} in
                1)
                        jan[$((counter))]=$counter;;
                2)
                        feb[$((counter))]=$counter;;
                3)
                        mar[$((counter))]=$counter;;
                4)
                        apr[$((counter))]=$counter;;
                5)
                        may[$((counter))]=$counter;;
                6)
                        jun[$((counter))]=$counter;;
                7)
                        july[$((counter))]=$counter;;
                8)
                        aug[$((counter))]=$counter;;
                9)
                        sep[$((counter))]=$counter;;
                10)
                        oct[$((counter))]=$counter;;
                11)
                        nov[$((counter))]=$counter;;
                *)
                        dec[$((counter))]=$counter;;
        esac
done
echo "Person Birth Month:${personBirthMonth[@]}"
echo "Person:${!personBirthMonth[@]}"
echo "Person's Birth Month in the Month of January:${jan[@]}"
echo "Person's Birth Month in the Month of February:${feb[@]}"
echo "Person's Birth Month in the Month of March:${mar[@]}"
echo "Person's Birth Month in the Month of April:${apr[@]}"
echo "Person's Birth Month in the Month of May:${may[@]}"
echo "Person's Birth Month in the Month of June:${jun[@]}"
echo "Person's Birth Month in the Month of July:${july[@]}"
echo "Person's Birth Month in the Month of August:${aug[@]}"
echo "Person's Birth Month in the Month of September:${sep[@]}"
echo "Person's Birth Month in the Month of October:${oct[@]}"
