#!/bin/bash

curl https://cloud.redhat.com/api/notifications/v1.0/openapi.json -o ./utils/openapi-generator/openapi.json
yarn schema:generate && yarn schema:clean
[[ -z $(git status --porcelain) ]] ||
(
  git status &&
  git diff &&
  echo "----------------------------------------------------------------" &&
  echo "  openapi.json types or actions are out of sync aborting build. " &&
  echo "----------------------------------------------------------------" &&
  false
)
