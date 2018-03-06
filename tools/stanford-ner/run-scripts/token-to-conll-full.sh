#!/bin/bash

printf "\n***** repeat 0 *****\n"
for i in {0..0}
do
	printf "\n***** fold "$i" *****\n"

	FOLDER=././../../../datasets/training/fold-$i

	printf "\n*** categories ***\n"
	~/anaconda2/bin/python "../src/token-to-conll.py" "$FOLDER/t_cat_train.txt"
	~/anaconda2/bin/python "../src/token-to-conll.py" "$FOLDER/t_cat_test.txt"

	printf "\n*** filtered ***\n"
	~/anaconda2/bin/python "../src/token-to-conll.py" "$FOLDER/t_filtered_train.txt"
	~/anaconda2/bin/python "../src/token-to-conll.py" "$FOLDER/t_filtered_test.txt"
done
