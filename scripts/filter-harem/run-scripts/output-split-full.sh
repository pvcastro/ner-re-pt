#!/bin/bash

~/anaconda2/bin/python "../src/split_train_test.py" "../outputs/filtered_all.xml" "filtered" 0
~/anaconda2/bin/python "../src/split_train_test.py" "../outputs/cat_all.xml" "cat" 0
