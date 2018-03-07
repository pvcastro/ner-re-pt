#!/bin/bash

printf "\n***** token-to-conll full *****\n"
for i in {0..0}
do
	printf "\n***** fold "$i" *****\n"

	FOLDER=././../../../datasets/training/fold-$i

	printf "\n*** categories ***\n"
	~/Desenvolvimento/anaconda2/bin/python "../src/token-to-conll.py" "$FOLDER/t_cat_train.txt"
	~/Desenvolvimento/anaconda2/bin/python "../src/token-to-conll.py" "$FOLDER/t_cat_test.txt"

	printf "\n*** filtered ***\n"
	~/Desenvolvimento/anaconda2/bin/python "../src/token-to-conll.py" "$FOLDER/t_filtered_train.txt"
	~/Desenvolvimento/anaconda2/bin/python "../src/token-to-conll.py" "$FOLDER/t_filtered_test.txt"
done
