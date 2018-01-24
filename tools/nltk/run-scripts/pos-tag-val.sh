#!/bin/bash

declare -a levels=("cat" "types" "subtypes" "filtered")
declare -a sets=("train" "test" "val")

SCRIPT="../src/pos-tagging-docs.py"
FOLDER=../outputs/tokenized
OUT=../outputs/postagged

printf "\n*** pos tagging ***\n"
# all 20min
for level in "${levels[@]}"
do

    for set in "${sets[@]}"
    do

 	    ~/anaconda2/bin/python $SCRIPT $FOLDER/t-$level-$set-doc.txt $OUT/pos-$level-docs-$set.txt 'ISO-8859-1'

 	done

done
