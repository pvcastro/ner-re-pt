#!/bin/bash

printf "\n***** add-IOB harem II *****\n"
FOLDER=../outputs
OUT=././../../../datasets

~/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_cat_harem_II.txt' $OUT'/categories_harem_II.txt'
~/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_filtered_harem_II.txt' $OUT'/filtered_harem_II.txt'
