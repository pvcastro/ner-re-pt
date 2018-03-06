#!/bin/bash

HAREM=../../../scripts/filter-harem

printf "\n***** mini *****\n"
FOLDER=outputs
java -d64 -cp stanford-corenlp-3.9.1.jar edu.stanford.nlp.process.PTBTokenizer -options tokenizeNLs=true -encoding ISO-8859-1 < $HAREM"/"$FOLDER"/cat_mini.xml" > "../"$FOLDER"/t_cat_mini.txt"

java -d64 -cp stanford-corenlp-3.9.1.jar edu.stanford.nlp.process.PTBTokenizer -options tokenizeNLs=true -encoding ISO-8859-1 < $HAREM"/"$FOLDER"/filtered_mini.xml" > "../"$FOLDER"/t_filtered_mini.txt"
