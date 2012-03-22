#!/bin/bash

now=`date "+%Y%m%d%H%M%S"`

LIMIT=3
FROM_USER="904715"
FROM_PASS="testuser"
TO_USER="testuser1"
SUBJECT="Test Event."
BODY="Test Event Body."
DUEDATE="2011-01-15T00:00:00-08:00"

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
	 -F sakai:eventDate=${DUEDATE} \
	 -F sakai:eventDate@TypeHint=Date \
	 -F sakai:eventPlace="Someplace Testy" \
	 -F sakai:required=false \
	 http://localhost:8080/user/${FROM_USER}/message.create.html
done


