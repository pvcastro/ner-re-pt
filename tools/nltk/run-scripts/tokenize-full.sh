#!/bin/bash

declare -a levels=("cat" "filtered")
printf "\n*** tokenizing ***\n"
SCRIPT="../src/tokenize_from_opennlp_format.py"

printf "\n** repeat-0 **\n"

for level in "${levels[@]}"
do
    for i in {0..9}
    do
        printf "\n** fold "$i" **\n"
        FOLDER=../../open-nlp/outputs/repeat-0/fold-$i
        OUT=../outputs/repeat-0/fold-$i

        ~/Desenvolvimento/anaconda2/bin/python $SCRIPT $FOLDER/$level'_train_sent_doc.xml' $OUT/t-$level-train-doc.txt 'ISO-8859-1'
        ~/Desenvolvimento/anaconda2/bin/python $SCRIPT $FOLDER/$level'_test_sent_doc.xml' $OUT/t-$level-test-doc.txt 'ISO-8859-1'
    done

done
