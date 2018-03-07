#!/bin/bash

./tokenize-full.sh
./token-to-conll-full.sh
./add-IOB-full.sh
./cleaner-full.sh

for i in {0..9}
do
	printf "\n***** fold "$i" *****\n"

	FOLDER=././../../../datasets/training/fold-$i
	SCRIPTS=././../../../scripts

    $SCRIPTS/convert-encoding.sh $FOLDER/categories_train.txt
    $SCRIPTS/convert-encoding.sh $FOLDER/categories_test.txt
    $SCRIPTS/convert-encoding.sh $FOLDER/filtered_train.txt
    $SCRIPTS/convert-encoding.sh $FOLDER/filtered_test.txt
done
