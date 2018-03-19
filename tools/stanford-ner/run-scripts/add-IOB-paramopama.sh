#!/bin/bash

printf "\n***** add-IOB paramopama *****\n"
FOLDER=../outputs
OUT=././../../../datasets

~/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/paramopama.txt' $OUT'/paramopama.txt'
