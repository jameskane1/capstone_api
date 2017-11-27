curl --include --request PATCH "http://localhost:4741/celebs/${ID}" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=$TOKEN" \
--data '{
  "celeb":{
    "age": "'"${AGE}"'"
  }
}'
