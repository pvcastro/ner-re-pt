#!/bin/bash

SCRIPT="src/change_tags_keep_doc.py"

declare -a levels=("cat" "types" "subtypes" "filtered")
declare -a sets=("train" "test" "val")

for level in "${levels[@]}"
do

    for set in "${sets[@]}"
    do

        ~/anaconda2/bin/python $SCRIPT ../outputs/$level'_'$set.xml $level'_'$set'_doc'.xml

    done

done
