JSON="
{
    'sakai:processing_failed':'true',
    '_previousBlockId':'8wYQgGJnEeGTPM04CjMLZA+',
    '_lastModifiedBy':'admin',
    '_previousVersion':'8wOfgGJnEeGTPM04CjMLZA+',
    'sakai:fileextension':'pdf',
    '_path':'kj8WZo6Jga',
    'sakai:description':'Water and Power: A  History of the Municipal Water Department and Hetch Hetchy System',
    '_blockId':'8wYQgGJnEeGTPM04CjMLZA+',
    'sakai:allowcomments':'true',
    'sakai:pooled-content-viewer':
    [
        'envs-65-introduction-to-fresh-water-processes-and-policies',
        'everyone'
    ],
    '_id':'84lxUWJnEeGTPM04CjMLZA+',
    '_bodyCreatedBy':'admin',
    'sakai:pool-content-created-for':'reinagalanes@berkeley.edu',
    'sakai:pooled-content-file-name':'Hetch-Hetchy-SF-History_OCR.pdf',
    '_bodyCreated':1330473439894,
    'sakai:copyright':'copyrighted',
    'sakai:pooled-content-editor':
    [
    ],
    '_length':6639279,
    'sakai:needsprocessing':'false',
    'sakai:permissions':'everyone',
    '_mimeType':'application/pdf',
    '_bodyLastModifiedBy':'admin',
    '_createdBy':'admin',
    '_versionHistoryId':'84lxUGJnEeGTPM04CjMLZA+',
    'sakai:tags':
    [
        'water',
        'operation',
        'San Francisco',
        'diameter',
        'height',
        'gallons',
        'municipal',
        'power',
        'acre feet',
        'Hetch Hetchy'
    ],
    'sakai:showcomments':'true',
    'sling:resourceType':'sakai/pooled-content',
    'sakai:pooled-content-manager':
    [
        'reinagalanes@berkeley.edu'
    ],
    '_created':1330473439608,
    '_bodyLastModified':1330473439894,
    '_lastModified':1332869627143,
    'sakai:pagecount':'58',
    'sakai:hasPreview':'true'
}
"


# strip newlines
JSON=`echo "${JSON}" | tr -d '\n'`

curl -e "http://localhost:8080/p/luSAXCREV" -u tester1:test "http://localhost:8080/p/luSAXCREV" -F":content=$JSON" -F":operation=import" -F":contentType=json"

