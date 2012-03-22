#!/bin/bash

JSON="
{
  'id': '$1',
  'title' : '$1',
  'description' : 'Exciting description of $1',
  'usersToAdd' :
  [
    { 'userid' : 'chris', 'role' : 'manager' },
    { 'userid' : 'joe', 'role' : 'member' },
    { 'userid' : 'bob', 'role' : 'member' }
  ],
  'tags' :
  [
    'bork',
    'foo'
  ],
  'worldTemplate' : '/var/templates/worlds/group/simple-group',
  'visibility': 'public',
  'joinability': 'yes',
  'message' : {
    'body' : 'Hi \${firstName}, \${creatorName} has added you as a \${role} to the group \${groupName}',
    'subject' : '\${creatorName} has added you as a \${role} to the group \${groupName}',
    'creatorName' : 'Chris Tweney',
    'groupName' : '$1',
    'system' : 'Sakai OAE',
    'link' : 'http://localhost:8080/~$1',
    'toSend' : [
      {
        'userid' : 'joe',
        'firstName' : 'Joseph',
        'role' : 'Member',
        'messageMode' : 'internal'
      },
      {
        'userid' : 'bob',
        'firstName' : 'Bobby',
        'role' : 'Member',
        'messageMode' : 'both'
      }
    ]
  }
}
"

# strip newlines
JSON=`echo "${JSON}" | tr -d '\n'`

curl -e "http://localhost:8080" -u chris:test "http://localhost:8080/system/world/create" -F data="$JSON"

