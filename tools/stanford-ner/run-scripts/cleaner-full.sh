#!/bin/bash

printf "\n***** cleaner full *****\n"
for i in {0..9}
do
	printf "\n***** fold "$i" *****\n"
    
	FOLDER=././../../../datasets/training/fold-$i

	~/Desenvolvimento/anaconda2/bin/python ../src/cleaner.py $FOLDER'/categories_train.txt'
	~/Desenvolvimento/anaconda2/bin/python ../src/cleaner.py $FOLDER'/categories_test.txt'

	~/Desenvolvimento/anaconda2/bin/python ../src/cleaner.py $FOLDER'/filtered_train.txt'
	~/Desenvolvimento/anaconda2/bin/python ../src/cleaner.py $FOLDER'/filtered_test.txt'
done
