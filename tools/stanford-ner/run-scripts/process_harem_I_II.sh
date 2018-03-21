#!/bin/bash

./tokenize-harem_I_II.sh
./token-to-conll-harem_I_II.sh
./add-IOB-harem_I_II.sh
./cleaner-harem_I_II.sh
./convert_harem_I_II.sh
