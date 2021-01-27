#!/bin/bash -x
meters=12	#Considering 12 units to be as meters given by question
read -p "Enter meters:" m
echo "Feet:"$(($m/$meters))

#!/bin/bash -x
meters=12	#Considering 12 units to be as meters not 0.3048m for 1ft
sqft=43560	#1acre is 43560 sqft
read -p "Enter plot(ftxft):" f1 f2
read -p "Number of plots:" np
echo "Plot in(mts): "$(($f1*$meters))"x"$(($f2*$meters))
plotInMeters=$((($f1*$meters)*($f2*$meters)))
echo "Acre:"$(($plotInMeters/$sqft))
