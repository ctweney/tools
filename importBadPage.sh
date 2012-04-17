#!/bin/bash

# strip newlines
JSON=`cat PageWithUndefinedID.json | tr -d '\n'`

curl -e "/dev/test" -u chris:test "http://localhost:8080/p/l6CBMyCsaa" -F":operation=import" \
    -F:content="$JSON" -F":replaceProperties=true" -F":replace=true" -F":contentType=json"

