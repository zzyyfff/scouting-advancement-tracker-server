#!/bin/bash

curl "http://localhost:4741/merit_badges" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
