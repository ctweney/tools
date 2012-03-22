#!/bin/bash

if [ -z "$1" ]; then
	echo "Usage: $0 source_root admin_password"
	exit
fi

SOURCE=$1
ADMIN_PWD=$2

cd $SOURCE/myberkeley/notices/target

curl -u admin:$ADMIN_PWD -F :operation=delete http://localhost:8080/var/message/notice

mvn org.apache.sling:maven-sling-plugin:install-file -Dsling.file=./edu.berkeley.myberkeley.notices-0.10-SNAPSHOT.jar -Dsling.user=admin -Dsling.password=$ADMIN_PWD

