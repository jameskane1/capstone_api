curl --include --request PATCH "http://localhost:4741/weathers/${ID}" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=$TOKEN" \
--data '{
  "weather":{
    "city": "'"${CITY}"'"
  }
}'
