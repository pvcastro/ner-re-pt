#!/bin/bash

printf "\n***** add-IOB mini *****\n"
FOLDER=../outputs
OUT=././../../../datasets

~/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_cat_mini.txt' $OUT'/categories_mini.txt'
~/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_filtered_mini.txt' $OUT'/filtered_mini.txt'
