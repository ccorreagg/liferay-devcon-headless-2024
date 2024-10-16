#!/bin/bash

curl \
   "http://localhost:8080/o/headless-builder/applications" \
   -d "@data/3-api-application.json" \
   -u "test@liferay.com:test" \
   -H "Content-Type: application/json" \
   -X "POST"
