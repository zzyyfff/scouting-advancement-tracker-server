#!/bin/bash

curl "https://obscure-atoll-84260.herokuapp.com/change-rank" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "rank_change": {
      "rank": "'"${RANK}"'"
    }
  }'

echo
