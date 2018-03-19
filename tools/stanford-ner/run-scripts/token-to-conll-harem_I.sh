#!/bin/bash

printf "\n***** token-to-conll harem I *****\n"
printf "\n*** categories ***\n"
~/anaconda2/bin/python "../src/token-to-conll.py" "../outputs/t_cat_harem_I.txt"

printf "\n*** filtered ***\n"
~/anaconda2/bin/python "../src/token-to-conll.py" "../outputs/t_filtered_harem_I.txt"
