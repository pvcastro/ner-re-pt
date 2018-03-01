#!/bin/bash

~/Desenvolvimento/anaconda2/bin/python "../src/split_train_test_validation.py" "../outputs/filtered_all.xml" "filtered"
~/Desenvolvimento/anaconda2/bin/python "../src/split_train_test_validation.py" "../outputs/cat_all.xml" "cat"
~/Desenvolvimento/anaconda2/bin/python "../src/split_train_test_validation.py" "../outputs/types_all.xml" "types"
~/Desenvolvimento/anaconda2/bin/python "../src/split_train_test_validation.py" "../outputs/subtypes_all.xml" "subtypes"
