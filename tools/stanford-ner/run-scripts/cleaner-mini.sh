#!/bin/bash

printf "\n***** cleaner mini *****\n"
OUT=././../../../datasets

~/anaconda2/bin/python ../src/cleaner.py $OUT'/categories_mini.txt'
~/anaconda2/bin/python ../src/cleaner.py $OUT'/filtered_mini.txt'
