curl --include --request POST "http://localhost:4741/weathers" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=$TOKEN" \
--data '{
  "weather":{
    "city": "'"${CITY}"'",
    "zip": "'"${ZIP}"'",
    "google": "'"${GOOGLE}"'"
  }
}'
