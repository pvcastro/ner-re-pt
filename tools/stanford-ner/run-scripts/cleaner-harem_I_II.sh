#!/bin/bash

printf "\n***** cleaner harem I and II *****\n"
OUT=././../../../datasets

~/anaconda2/bin/python ../src/cleaner.py $OUT'/categories_harem_full.txt'
~/anaconda2/bin/python ../src/cleaner.py $OUT'/filtered_harem_full.txt'
