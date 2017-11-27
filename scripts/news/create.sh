curl --include --request POST "http://localhost:4741/news_papers" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=$TOKEN" \
--data '{
  "news_paper":{
    "name": "'"${NAME}"'",
    "site": "'"${SITE}"'",
    "region": "'"${REGION}"'"
  }
}'
