#!/bin/bash

printf "\n***** repeat 0 *****\n"
for i in {0..9}
do
	printf "\n***** fold "$i" *****\n"
    
	FOLDER=././../../../datasets/training/fold-$i

	~/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_cat_train.txt' $FOLDER'/categories_train.txt'
	~/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_cat_test.txt' $FOLDER'/categories_test.txt'

	~/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_filtered_train.txt' $FOLDER'/filtered_train.txt'
	~/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_filtered_test.txt' $FOLDER'/filtered_test.txt'
done
