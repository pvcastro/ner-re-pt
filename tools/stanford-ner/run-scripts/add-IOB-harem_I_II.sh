#!/bin/bash

printf "\n***** add-IOB harem I and II *****\n"
FOLDER=../outputs
OUT=././../../../datasets

~/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_cat_harem_full.txt' $OUT'/categories_harem_full.txt'
~/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_filtered_harem_full.txt' $OUT'/filtered_harem_full.txt'
