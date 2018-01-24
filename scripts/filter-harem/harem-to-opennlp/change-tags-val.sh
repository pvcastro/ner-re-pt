#!/bin/bash

~/anaconda2/bin/python "src/change_tags.py" "../outputs/cat_all.xml" "cat_all.xml"
~/anaconda2/bin/python "src/change_tags.py" "../outputs/cat_train.xml" "cat_train.xml"
~/anaconda2/bin/python "src/change_tags.py" "../outputs/cat_test.xml" "cat_test.xml"
~/anaconda2/bin/python "src/change_tags.py" "../outputs/cat_val.xml" "cat_val.xml"