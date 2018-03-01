#!/bin/bash

PATH_IN="../../../scripts/filter-harem/harem-to-opennlp/outputs/"
SCRIPT="../src/sentence-segmentation.py"

printf "\n** mini **\n"
FOLDER=../outputs
~/Desenvolvimento/anaconda2/bin/python $SCRIPT $PATH_IN$FOLDER"/cat_mini_doc.xml" $FOLDER"/cat_mini_sent_doc.xml"
~/Desenvolvimento/anaconda2/bin/python $SCRIPT $PATH_IN$FOLDER"/filtered_mini_doc.xml" $FOLDER"/filtered_mini_sent_doc.xml"
