#!/bin/bash

now=`date "+%Y%m%d%H%M%S"`

LIMIT=3
FROM_USER="322279"
FROM_PASS="testuser"
TO_USER="322279"
SUBJECT="Test Task."
BODY="Test Body."
DUEDATE="2011-01-23T00:00:00-08:00"

for ((a=0; a <= LIMIT ; a++)) 
do
     /usr/bin/curl -u ${FROM_USER}:${FROM_PASS} -F sakai:type=notice \
	 -F sakai:sendstate=pending -F sakai:messagebox=outbox \
	 -F sakai:to=notice:${TO_USER} \
	 -F sakai:from=${FROM_USER} \
	 -F sakai:subject="${SUBJECT}${a}.${now}" \
	 -F sakai:body="${BODY}${a}.${now}" \
	 -F sakai:category=reminder \
	 -F sakai:taskState=created \
	 -F sakai:dueDate=${DUEDATE} \
	 -F sakai:dueDate@TypeHint=Date \
	 -F sakai:required=true \
	 https://portal.berkeley.edu/user/${FROM_USER}/message.create.html
done


