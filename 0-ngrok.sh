#!/bin/bash

NGROK_URL="apibuilder.devcon2024.ngrok.dev"

if [ $# -eq 1 ]; then
    NGROK_URL="$1"
fi

ngrok http --url="$NGROK_URL" --request-header-add "X-Forwarded-Port:443" 8080
