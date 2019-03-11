#!/bin/bash

curl "https://obscure-atoll-84260.herokuapp.com/merit_badges/${ID}" \
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
