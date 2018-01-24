#!/bin/bash

PATH_IN="../../../scripts/filter-harem/harem-to-opennlp/outputs/"
SCRIPT="../src/sentence-segmentation.py"
FOLDER=../outputs/

declare -a levels=("cat" "types" "subtypes" "filtered")
declare -a sets=("train" "test" "val")

for level in "${levels[@]}"
do

    for set in "${sets[@]}"
    do

        ~/anaconda2/bin/python $SCRIPT $PATH_IN$level"_"$set"_doc.xml" $FOLDER$level"_"$set"_sent_doc.xml"

    done

done
