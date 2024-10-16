#!/bin/bash

API_APPLICATION_FILE="data/3-api-application.json"
API_PROPERTY_FILE="data/5-api-property-sender-html-url.json"

curl \
   "http://localhost:8080/o/headless-builder/properties" \
   -d "$(cat $API_PROPERTY_FILE | sed "s|{API_BUILDER_SCHEMA_ERC}|$(cat $API_APPLICATION_FILE | jq -r '.apiApplicationToAPISchemas[0].externalReferenceCode')|g")" \
   -u "test@liferay.com:test" \
   -H "Content-Type: application/json" \
   -X "POST"
