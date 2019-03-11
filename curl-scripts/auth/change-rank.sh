#!/bin/bash

curl "http://localhost:4741/change-rank" \
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
