#!/bin/bash -x

HEAD=1;
FLIP_CHECK=$((RANDOM%2))
NUM_OF_FLIPS=5
if [ $FLIP_CHECK -eq $HEAD ]
then
	echo " Flip coin is HEADS "
else
	echo " Flip coin is TAILS "
fi

while [[ $NUMBER -le $NUM_OF_FLIPS ]]
do
	FLIP_CHECK=$((RANDOM%2))

if [ $FLIP_CHECK -eq $HEAD ]
then
	COIN_FLIP="H"
	HEAD_CNT=$(( $HEAD_CNT+1 ))
else
	COIN_FLIP="T"
	TAIL_CNT=$(( $TAIL_CNT+1 ))
fi

	Singlet[$NUMBER]=$COIN_FLIP
	NUMBER=$(( $NUMBER+1 ))
	echo ${Singlet[@]}
done

	HEAD_PERCENT=$(echo | awk '{print '$HEAD_CNT/$NUM_OF_FLIPS*100'}')
	TAIL_PERCENT=$(echo | awk '{print '$TAIL_CNT/$NUM_OF_FLIPS*100'}')

ARRAY_SINGLET=($HEAD_PERCENT $TAIL_PERCENT)
echo ${ARRAY_SINGLET[@]}
