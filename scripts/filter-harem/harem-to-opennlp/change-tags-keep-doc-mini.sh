#!/bin/bash

SCRIPT="src/change_tags_keep_doc.py"
~/Desenvolvimento/anaconda2/bin/python $SCRIPT "../outputs/cat_mini.xml" "cat_mini_doc.xml"
~/Desenvolvimento/anaconda2/bin/python $SCRIPT "../outputs/filtered_mini.xml" "filtered_mini_doc.xml"
