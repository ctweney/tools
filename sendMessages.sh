#!/bin/bash

from="300846"
password="testuser"
to="904715"
subject="Test Subject"
body="Test Body"

for i in {0..150}
	do
		echo "send message " $i
		curl -e http://localhost:8080/ -d"_charset_=utf-8" -d"sakai:body=$body" -d"sakai:category=message" -d"sakai:from=$from" -d"sakai:messagebox=outbox" -d"sakai:sendstate=pending" -d"sakai:subject=$subject" -d"sakai:to=internal:$to" -d"sakai:type=internal" http://$from:$password@localhost:8080/~$from/message.create.html
		sleep 0.5
done
