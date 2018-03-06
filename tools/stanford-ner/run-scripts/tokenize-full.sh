#!/bin/bash

HAREM=../../../scripts/filter-harem

printf "\n***** repeat 0 *****\n"
for i in {0..9}
do
	FOLDER=outputs/repeat-0/fold-$i
	OUT=././../../../datasets/training/fold-$i
	printf "\n***** fold "$i" *****\n"
	java -d64 -cp stanford-corenlp-3.9.1.jar edu.stanford.nlp.process.PTBTokenizer -options tokenizeNLs=true -encoding ISO-8859-1 < $HAREM"/"$FOLDER"/cat_train.xml" > "$OUT/t_cat_train.txt"
	java -d64 -cp stanford-corenlp-3.9.1.jar edu.stanford.nlp.process.PTBTokenizer -options tokenizeNLs=true -encoding ISO-8859-1 < $HAREM"/"$FOLDER"/cat_test.xml" > "$OUT/t_cat_test.txt"

	java -d64 -cp stanford-corenlp-3.9.1.jar edu.stanford.nlp.process.PTBTokenizer -options tokenizeNLs=true -encoding ISO-8859-1 < $HAREM"/"$FOLDER"/filtered_train.xml" > "$OUT/t_filtered_train.txt"
	java -d64 -cp stanford-corenlp-3.9.1.jar edu.stanford.nlp.process.PTBTokenizer -options tokenizeNLs=true -encoding ISO-8859-1 < $HAREM"/"$FOLDER"/filtered_test.xml" > "$OUT/t_filtered_test.txt"
done
