#!/bin/bash

curl "https://obscure-atoll-84260.herokuapp.com/sign-up" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'",
      "first_name": "'"${FIRST}"'",
      "last_name": "'"${LAST}"'",
      "scout_rank": "'"${RANK}"'"
    }
  }'

echo
