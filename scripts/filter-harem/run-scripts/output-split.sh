#!/bin/bash

for r in {0..3}
do
	~/anaconda2/bin/python "../src/split_train_test.py" "../outputs/filtered_all.xml" "filtered" $r
	~/anaconda2/bin/python "../src/split_train_test.py" "../outputs/cat_all.xml" "cat" $r
	~/anaconda2/bin/python "../src/split_train_test.py" "../outputs/types_all.xml" "types" $r
	~/anaconda2/bin/python "../src/split_train_test.py" "../outputs/subtypes_all.xml" "subtypes" $r
done