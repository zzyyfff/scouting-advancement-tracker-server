#!/bin/bash

curl "http://localhost:4741/merit_badges/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "merit_badge": {
      "completed": "'"${COMP}"'"
    }
  }'

echo
