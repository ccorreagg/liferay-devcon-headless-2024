#!/bin/bash

FILE="data/2-object-definition-github-notification.json"

curl \
   "http://localhost:8080/o/object-admin/v1.0/object-definitions/by-external-reference-code/$(cat $FILE | jq -r '.externalReferenceCode')" \
   -d "@$FILE" \
   -u "test@liferay.com:test" \
   -H "Content-Type: application/json" \
   -X "PUT"
