#!/bin/bash

printf "\n***** cleaner harem II *****\n"
OUT=././../../../datasets

~/anaconda2/bin/python ../src/cleaner.py $OUT'/categories_harem_II.txt'
~/anaconda2/bin/python ../src/cleaner.py $OUT'/filtered_harem_II.txt'
