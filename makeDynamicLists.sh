#!/bin/bash

for i in {1..12}
	do
	  content=":content={'sling:resourceType':'myberkeley/dynamiclist','sakai:name':'all ced $i','sakai:description':'desc $i','context':'myb-ced-students','criteria':'{}'}"

		curl -u 904715:testuser -e http://localhost:8080 -d"_charset_=utf-8"\
		-d"$content"\
		-d":replace=true" -d":replaceProperties=true" -d":operation=import" -d":contentType=json"\
		http://localhost:8080/~904715/private/dynamic_lists/dl-904715-generated-$i
done
