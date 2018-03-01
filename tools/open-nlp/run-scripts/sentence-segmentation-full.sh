#!/bin/bash

PATH_IN="../../../scripts/filter-harem/harem-to-opennlp/outputs/"
SCRIPT="../src/sentence-segmentation.py"


printf "\n** repeat-0 **\n"
for i in {0..9}
do
    FOLDER=../outputs/repeat-0/fold-$i
    printf "\n** fold "$i" **\n"
    ~/Desenvolvimento/anaconda2/bin/python $SCRIPT $PATH_IN$FOLDER"/cat_train_doc.xml" $FOLDER"/cat_train_sent_doc.xml"
    ~/Desenvolvimento/anaconda2/bin/python $SCRIPT $PATH_IN$FOLDER"/cat_test_doc.xml" $FOLDER"/cat_test_sent_doc.xml"

    ~/Desenvolvimento/anaconda2/bin/python $SCRIPT $PATH_IN$FOLDER"/filtered_train_doc.xml" $FOLDER"/filtered_train_sent_doc.xml"
    ~/Desenvolvimento/anaconda2/bin/python $SCRIPT $PATH_IN$FOLDER"/filtered_test_doc.xml" $FOLDER"/filtered_test_sent_doc.xml"

done
