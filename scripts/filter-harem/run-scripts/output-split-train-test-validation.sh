#!/bin/bash

~/anaconda2/bin/python "../src/split_train_test_validation.py" "../outputs/filtered_all.xml" "filtered"
~/anaconda2/bin/python "../src/split_train_test_validation.py" "../outputs/cat_all.xml" "cat"
~/anaconda2/bin/python "../src/split_train_test_validation.py" "../outputs/types_all.xml" "types"
~/anaconda2/bin/python "../src/split_train_test_validation.py" "../outputs/subtypes_all.xml" "subtypes"
