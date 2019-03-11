#!/bin/bash

curl "https://obscure-atoll-84260.herokuapp.com/merit_badges" \
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
