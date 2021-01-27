#!/bin/bash -x
echo "Think of a number between 1-100"
bool=0
max=100
min=0
read -p "Is the number $max or $min (y/n): " found
case $found in
        y)
                bool=1;;
        n)
                bool=0;;
        *)
                echo "Invalid choice";;
esac
while (( $bool!=1 ))
do
        for (( count=$min ; count<=$max ; count++ ))
        do
                read -p "Is the number greater or less than $((($min+$max)/2)) (g/l): " choice
                case $choice in
                        g)
                                min=$(( ($min+$max)/2))
                                max=$max
                                read -p "Is the number $max or $min (y/n): " found
                                case $found in
                                        y)
                                                bool=1
                                                if (($bool==1)); then
                                                        read -p "Is this the number $max(y/n): " yes
                                                        if (($yes==y)); then
                                                                number=$max
                                                                break
                                                        else
                                                                number=$min
                                                                break
                                                        fi
                                                fi;;
                                        n)
                                                bool=0;;
                                        *)
                                                echo "Invalid choice"
                                                break;;
                                esac;;
                        l)
                                max=$(( ($min+$max)/2))
                                min=$min
                                read -p "Is the number $max or $min (y/n): " found
                                case $found in
                                        y)
 				 bool=1
                                                if (($bool==1)); then
                                                        read -p "Is this the number $max(y/n): " yes
                                                        if (($yes==y)); then
                                                                number=$max
                                                                break
                                                        else
                                                                number=$min
                                                                break
                                                        fi
                                                fi;;
                                        n)
                                                bool=0;;
                                        *)
                                                echo "Invalid choice"
                                                break;;
                                esac;;
                        *)
                                echo "Invalid choice";;
                esac
        done
done
