#!/bin/bash

LIMIT=13

for ((a=2; a <= LIMIT ; a++))
do
  JSON="
  {
      'sakai:messagebox':'drafts',
      'senderID' : '904715',
      'type':'message',
      'sendDate':'2011-02-02T12:16:59-01:00',
      'sendState':'pending',
      'dynamicListID':'',
      'uxState' : {
          'validated' : true,
          'eventHour' : 1,
          'eventMin' : 2,
          'eventAMPM' : 3
      },
      'body':'A surpassingly clever message body $a',
      'subject':'Another interesting Tuesday subject $a'
  }
  "

  # strip newlines
  JSON=`echo "${JSON}" | tr -d '\n'`

  curl -e "/dev/test" -u 904715:testuser "http://localhost:8080/~904715.myb-notificationstore.html" -F notification="$JSON"
  echo
done

