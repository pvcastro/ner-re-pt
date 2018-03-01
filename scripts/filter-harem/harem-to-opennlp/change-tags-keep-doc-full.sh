#!/bin/bash

SCRIPT="src/change_tags_keep_doc.py"
for i in {0..9}
do
    FOLDER="repeat-0/fold-"$i
    ~/Desenvolvimento/anaconda2/bin/python $SCRIPT "../outputs/"$FOLDER"/cat_train.xml" $FOLDER"/cat_train_doc.xml"
    ~/Desenvolvimento/anaconda2/bin/python $SCRIPT "../outputs/"$FOLDER"/cat_test.xml" $FOLDER"/cat_test_doc.xml"

    ~/Desenvolvimento/anaconda2/bin/python $SCRIPT "../outputs/"$FOLDER"/filtered_train.xml" $FOLDER"/filtered_train_doc.xml"
    ~/Desenvolvimento/anaconda2/bin/python $SCRIPT "../outputs/"$FOLDER"/filtered_test.xml" $FOLDER"/filtered_test_doc.xml"
done
