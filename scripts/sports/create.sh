curl --include --request POST "http://localhost:4741/sports" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=$TOKEN" \
--data '{
  "sport":{
    "team": "'"${TEAM}"'",
    "league": "'"${LEAGUE}"'",
    "google": "'"${GOOGLE}"'"
  }
}'
