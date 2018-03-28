#!/bin/bash

printf "\n***** token-to-conll harem II *****\n"
printf "\n*** categories ***\n"
~/anaconda2/bin/python "../src/token-to-conll.py" "../outputs/t_cat_harem_II.txt"

printf "\n*** filtered ***\n"
~/anaconda2/bin/python "../src/token-to-conll.py" "../outputs/t_filtered_harem_II.txt"
