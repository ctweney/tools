#!/bin/bash

LIMIT=50

for ((a=1; a <= LIMIT ; a++))
do
  curl -e "http://localhost:8080/" -u admin:admin "http://localhost:8080/~admin/node$a" -F"prop1=val$a"
  echo
done

