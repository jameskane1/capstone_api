curl --include --request PATCH "http://localhost:4741/sports/${ID}" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=$TOKEN" \
--data '{
  "sport":{
    "league": "'"${LEAGUE}"'"
  }
}'
