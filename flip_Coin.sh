#!/bin/bash -x
coin=$(( RANDOM %2 + 1 ));
if [ $coin -eq 1 ];
then
	echo "heads win";
else
	echo "tails win";
fi

