#!/bin/bash

./tokenize-mini.sh
./token-to-conll-mini.sh
./add-IOB-mini.sh
././../../../scripts/convert-encoding.sh ././../../../datasets/categories_mini.txt
././../../../scripts/convert-encoding.sh ././../../../datasets/filtered_mini.txt
