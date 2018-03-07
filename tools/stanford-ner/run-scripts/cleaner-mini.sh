#!/bin/bash

printf "\n***** cleaner mini *****\n"
OUT=././../../../datasets

~/Desenvolvimento/anaconda2/bin/python ../src/cleaner.py $OUT'/categories_mini.txt'
~/Desenvolvimento/anaconda2/bin/python ../src/cleaner.py $OUT'/filtered_mini.txt'
