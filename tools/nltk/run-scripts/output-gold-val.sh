#!/bin/bash

declare -a levels=("cat" "types" "subtypes" "filtered")
declare -a sets=("train" "test" "val")

printf "\n*** output gold ***\n"

FOLDER=../outputs/joinedposentity
OUT=../outputs/gold

for level in "${levels[@]}"
do

    for set in "${sets[@]}"
    do

        ~/anaconda2/bin/python "../src/out-conll-gold.py" $FOLDER/out-conll-$level-$set.txt $OUT/out-$level-$set-gold.txt 'ISO-8859-1'

    done

done
