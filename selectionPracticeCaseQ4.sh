#!/bin/bash -x
echo "Choose from Options:"
echo "1. Feet to Inch"
echo "2. Feet to meter"
echo "3. Inch to Feet"
echo "4. Meter to Feet"
read choice
case $choice in
        1)
                read -p "Enter Feet:" n
                inch=12         #1ft=12inch
		output1=`awk 'BEGIN{print '$n'*'$inch'}'`
                echo "Inch:"$output1;;
        2)
                read -p "Enter Feet:" n
                meter=0.3048    #1ft=0.3048m
		output2=`awk 'BEGIN{print '$n'*'$meter'}'`
                echo "Meter:"$output2;;		#(($n*$meter))
        3)
                read -p "Enter Inch:" n
                feet=0.08333    #1inch=0.08333ft
		output3=`awk 'BEGIN{print '$n'*'$feet'}'`
                echo "Feet:"$output3;;		#(($n*$feet))
        4)
                read -p "Enter Meter:" n
                feet=3.28084    #1m=3.28084ft
		output4=`awk 'BEGIN{print '$n'*'$feet'}'`
                echo "Feet:"$output4;;		#(($n*$feet))
        *)
                echo "Invalid Input";;
esac
