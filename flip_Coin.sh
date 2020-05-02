#!/bin/bash -x
heads=0
tails=1
headCount=0
tailCount=0
for (( i=1; i>0; i++ ))
do

	coin=$((RANDOM%2));
	if [ $coin -eq 1 ];
	then
		headCount=$(( $headCount + 1 ))
		if [ $headCount -eq 11 ]
		then
			echo "heads win";
			exit
		fi
	fi

	if [ $coin -eq 0 ];
        then
               	tailCount=$(( $tailCount + 1 ))
                if [ $tailCount -eq 11 ]
		then
                	echo "tails win";
                	exit
		fi
        fi
done

