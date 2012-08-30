#!/bin/bash

user="$1"
  PROFILE=`echo "{'basic': {'access': 'everybody', 'elements': {'email': {'value': '$user@sakai.invalid'}, 'firstName': {'value': '$user'}, 'lastName': {'value': '$user'}}}}"`
  curl -u admin:admin -e http://localhost:8080 http://localhost:8080/system/userManager/user.create.html -F:name=$user -Fpwd=test -FpwdConfirm=test -F":sakai:profile-import=$PROFILE"


