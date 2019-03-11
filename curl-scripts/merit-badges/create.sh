#!/bin/bash

curl "http://localhost:4741/merit_badges" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "merit_badge": {
      "name": "'"${NAME}"'"
    }
  }'

echo
