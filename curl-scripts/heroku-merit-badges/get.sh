#!/bin/bash

curl "https://obscure-atoll-84260.herokuapp.com/merit_badges" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
