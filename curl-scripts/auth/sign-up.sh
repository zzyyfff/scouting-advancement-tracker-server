#!/bin/bash

curl "http://localhost:4741/sign-up" \
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
