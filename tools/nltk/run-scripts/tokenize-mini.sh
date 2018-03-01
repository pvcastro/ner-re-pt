#!/bin/bash

declare -a levels=("cat" "filtered")
printf "\n*** tokenizing ***\n"
SCRIPT="../src/tokenize_from_opennlp_format.py"

printf "\n** mini **\n"

for level in "${levels[@]}"
do
    printf "\n** level "$level" **\n"
    FOLDER=../../open-nlp/outputs
    OUT=../outputs

    ~/Desenvolvimento/anaconda2/bin/python $SCRIPT $FOLDER/$level'_mini_sent_doc.xml' $OUT/t-$level-mini-doc.txt 'ISO-8859-1'
done
