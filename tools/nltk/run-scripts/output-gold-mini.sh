#!/bin/bash

declare -a levels=("cat" "filtered")
printf "\n*** output gold ***\n"
printf "\n** mini **\n"

for level in "${levels[@]}"
do
    printf "\n** level "$level" **\n"
    FOLDER=../outputs
    OUT=../outputs

    ~/Desenvolvimento/anaconda2/bin/python "../src/out-conll-gold.py" $FOLDER/t-$level-mini-doc.txt $OUT/out-$level-mini-gold.txt 'ISO-8859-1'
done
