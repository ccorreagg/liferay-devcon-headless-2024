#!/bin/bash

curl \
   "http://localhost:8080/o/object-admin/v1.0/object-folders" \
   -d "@data/1-object-folder.json" \
   -u "test@liferay.com:test" \
   -H "Content-Type: application/json" \
   -X "POST"
