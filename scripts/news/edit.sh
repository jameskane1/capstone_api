curl --include --request PATCH "http://localhost:4741/news_papers/${ID}" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=$TOKEN" \
--data '{
  "news_paper":{
    "region": "'"${REGION}"'"
  }
}'
