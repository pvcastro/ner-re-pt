#!/bin/bash

declare -a levels=("cat" "types" "subtypes" "filtered")
for r in {0..3}
do
	printf "\n** repeat "$r" **\n"

	for level in "${levels[@]}"
	do
		printf "\n* level: "$level"*\n"
		for i in {0..9}
		do
			printf "\n** fold "$i" **\n"
			python src/check-equal.py $level $i $r
		done

		printf "\n** experiences **\n"
		python src/check-equal-exp.py $level $r iterations {10..120..10}
	done

	printf "\n** sigarra **\n"
	python src/check-equal-sigarra.py $r
	python src/check-equal-sigarra.py $r default

	for i in {0..9}
	do
		printf "\n** fold "$i" **\n"
		python src/check-equal-sigarra-10fold.py $r $i
		python src/check-equal-sigarra-10fold.py $r $i default
	done
done