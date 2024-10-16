#!/bin/bash

FILE="data/4-data-set.json"

curl \
   "http://localhost:8080/o/data-set-admin/data-sets/by-external-reference-code/$(cat $FILE | jq -r '.externalReferenceCode')" \
   -d "@$FILE" \
   -u "test@liferay.com:test" \
   -H "Content-Type: application/json" \
   -X "PUT"
