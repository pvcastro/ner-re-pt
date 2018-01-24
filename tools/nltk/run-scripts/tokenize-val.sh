#!/bin/bash

declare -a levels=("cat" "types" "subtypes" "filtered")
declare -a sets=("train" "test" "val")

printf "\n*** tokenizing ***\n"
SCRIPT="../src/tokenize_from_opennlp_format.py"
FOLDER=../../open-nlp/outputs
OUT=../outputs/tokenized

for level in "${levels[@]}"
do

    for set in "${sets[@]}"
    do

        ~/anaconda2/bin/python $SCRIPT $FOLDER/$level'_'$set'_sent_doc.xml' $OUT/'t-'$level'-'$set'-doc.txt' 'ISO-8859-1'

    done

done
