#!/bin/bash

HAREM=../../../scripts/filter-harem

printf "\n***** tokenize harem I and II *****\n"
FOLDER=outputs
java -d64 -cp stanford-corenlp-3.9.1.jar edu.stanford.nlp.process.PTBTokenizer -options "tokenizeNLs=true,normalizeParentheses=false,normalizeOtherBrackets=false" -encoding ISO-8859-1 < $HAREM"/"$FOLDER"/cat_harem_full.xml" > "../"$FOLDER"/t_cat_harem_full.txt"

java -d64 -cp stanford-corenlp-3.9.1.jar edu.stanford.nlp.process.PTBTokenizer -options "tokenizeNLs=true,normalizeParentheses=false,normalizeOtherBrackets=false" -encoding ISO-8859-1 < $HAREM"/"$FOLDER"/filtered_harem_full.xml" > "../"$FOLDER"/t_filtered_harem_full.txt"
