#!/bin/bash

printf "\n***** add-IOB harem I *****\n"
FOLDER=../outputs
OUT=././../../../datasets

~/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_cat_harem_I.txt' $OUT'/categories_harem_I.txt'
~/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_filtered_harem_I.txt' $OUT'/filtered_harem_I.txt'
