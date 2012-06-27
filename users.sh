#!/bin/bash

LIMIT="$1"

if [ -z "$1" ]; then
	LIMIT=50
fi

for ((a=1; a <= LIMIT ; a++))
do
  PROFILE=`echo "{'basic': {'access': 'everybody', 'elements': {'email': {'value': 'tester$a@sakai.invalid'}, 'firstName': {'value': 'tester$a'}, 'lastName': {'value': 'tester$a'}}}}"`
  curl -u admin:admin -e http://localhost:8080 http://localhost:8080/system/userManager/user.create.html -F:name=tester$a -Fpwd=test -FpwdConfirm=test -F":sakai:profile-import=$PROFILE"
done


