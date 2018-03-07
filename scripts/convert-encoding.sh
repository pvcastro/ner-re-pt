#!/bin/bash
if [ $# -lt 1 ]
then
  echo "Usage: "$0" <file_name>"
  echo "Convert files to utf-8"
  exit
fi

for i in $*
do
  iconv -f ISO-8859-1 -t utf-8 $i -o $i.tmp #tmp file is created as a workaround for bus error
  mv $i.tmp $i
done