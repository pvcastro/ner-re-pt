#!/bin/bash

printf "\n***** add-IOB full *****\n"
for i in {0..5}
do
	printf "\n***** fold "$i" *****\n"
    
	FOLDER=./../outputs/repeat-0/fold-$i
	OUT=././../../../datasets/training/fold-$i

	~/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_cat_train.txt' $OUT'/categories_train.txt'
	~/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_cat_test.txt' $OUT'/categories_test.txt'

	~/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_filtered_train.txt' $OUT'/filtered_train.txt'
	~/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_filtered_test.txt' $OUT'/filtered_test.txt'
done
