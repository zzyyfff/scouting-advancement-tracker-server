#!/bin/bash

curl "https://obscure-atoll-84260.herokuapp.com/change-name" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "display_name_change": {
      "first": "'"${FIRST}"'",
      "last": "'"${LAST}"'"
    }
  }'

echo
