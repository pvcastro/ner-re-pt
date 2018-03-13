#!/bin/bash

for i in {0..5}
do
	printf "\n***** fold "$i" *****\n"

	FOLDER=././../../../datasets/training/fold-$i
	SCRIPTS=././../../../scripts

    $SCRIPTS/convert-encoding.sh $FOLDER/categories_train.txt
    $SCRIPTS/convert-encoding.sh $FOLDER/categories_test.txt
    $SCRIPTS/convert-encoding.sh $FOLDER/filtered_train.txt
    $SCRIPTS/convert-encoding.sh $FOLDER/filtered_test.txt
done
