#!/bin/sh
set -o xtrace

# Pull the Docker image from Docker Hub
cf push $1 --docker-image casalinas83/mendix:v1 --no-start

# Create and bind the database service
cf create-service elephantsql turtle $1-db
cf bind-service $1 $1-db

# Retrieve the database endpoint
APP_ID=$(cf curl /v3/apps | jq --arg app_name $1 '.resources[]  | select(.name == $app_name) | .guid' --raw-output)
DATABASE_URL=$(cf curl /v3/apps/$APP_ID/env | jq ".system_env_json.VCAP_SERVICES.elephantsql[0] | .credentials.uri" --raw-output)

# Define the required environment variables
cf set-env $1  ADMIN_PASSWORD Password1!
cf set-env $1 DATABASE_ENDPOINT $DATABASE_URL

# Start app
cf start $1