curl --include --request POST "http://localhost:4741/celebs" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=$TOKEN" \
--data '{
  "celeb":{
    "name": "'"${NAME}"'",
    "age": "'"${AGE}"'",
    "occupation": "'"${OCCUPATION}"'",
    "google": "'"${GOOGLE}"'"
  }
}'
