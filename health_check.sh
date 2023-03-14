#!/bin/bash

# Make the HTTP GET request to http://localhost:8080/health
response=$(curl --silent http://localhost:8080/health)

# Check if the response string equals 'ok'
if [[ "$response" == "ok" ]]; then
    exit 0
else
    exit 1
fi
