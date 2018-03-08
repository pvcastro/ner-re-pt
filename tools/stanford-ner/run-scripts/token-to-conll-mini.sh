#!/bin/bash

printf "\n***** token-to-conll mini *****\n"
printf "\n*** categories ***\n"
~/anaconda2/bin/python "../src/token-to-conll.py" "../outputs/t_cat_mini.txt"

printf "\n*** filtered ***\n"
~/anaconda2/bin/python "../src/token-to-conll.py" "../outputs/t_filtered_mini.txt"
