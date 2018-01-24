#!/bin/bash

SCRIPT="../src/join-pos-categories.py"
printf "\n*** joining pos with entities ***\n"

declare -a levels=("cat" "types" "subtypes" "filtered")
declare -a sets=("train" "test" "val")

POS_FOLDER=../outputs/postagged
T_FOLDER=../outputs/tokenized
OUT=../outputs/joinedposentity

for level in "${levels[@]}"
do

    for set in "${sets[@]}"
    do

        ~/anaconda2/bin/python $SCRIPT $POS_FOLDER/pos-$level-docs-$set.txt $T_FOLDER/t-$level-$set-doc.txt $OUT/out-conll-$level-$set.txt 'ISO-8859-1'

    done

done
