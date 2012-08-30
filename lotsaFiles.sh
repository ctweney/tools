#!/bin/bash

LIMIT="$1"

if [ -z "$1" ]; then
	LIMIT=50
fi

for ((a=1; a <= LIMIT ; a++))
do
  echo "Content of $a" > $a.txt
done



