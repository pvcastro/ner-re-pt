#!/bin/bash

printf "\n***** cleaner harem I *****\n"
OUT=././../../../datasets

~/anaconda2/bin/python ../src/cleaner.py $OUT'/categories_harem_I.txt'
~/anaconda2/bin/python ../src/cleaner.py $OUT'/filtered_harem_I.txt'
