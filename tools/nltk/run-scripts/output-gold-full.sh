#!/bin/bash

declare -a levels=("cat" "filtered")
printf "\n*** output gold ***\n"
printf "\n** repeat-0 **\n"

for level in "${levels[@]}"
do
    for i in {0..9}
    do
        printf "\n** fold "$i" **\n"
        FOLDER=../outputs/repeat-0/fold-$i
        OUT=../outputs/repeat-0/ner-results/fold-$i

        ~/Desenvolvimento/anaconda2/bin/python "../src/out-conll-gold.py" $FOLDER/t-$level-train-doc.txt $OUT/out-$level-train-gold.txt 'ISO-8859-1'
        ~/Desenvolvimento/anaconda2/bin/python "../src/out-conll-gold.py" $FOLDER/t-$level-test-doc.txt $OUT/out-$level-test-gold.txt 'ISO-8859-1'
    done
done
