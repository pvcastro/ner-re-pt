#!/bin/bash

printf "\n***** add-IOB full *****\n"
for i in {0..9}
do
	printf "\n***** fold "$i" *****\n"
    
	FOLDER=././../../../datasets/training/fold-$i

	~/Desenvolvimento/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_cat_train.txt' $FOLDER'/categories_train.txt'
	~/Desenvolvimento/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_cat_test.txt' $FOLDER'/categories_test.txt'

	~/Desenvolvimento/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_filtered_train.txt' $FOLDER'/filtered_train.txt'
	~/Desenvolvimento/anaconda2/bin/python ../src/add-IOB.py $FOLDER'/t_filtered_test.txt' $FOLDER'/filtered_test.txt'
done
