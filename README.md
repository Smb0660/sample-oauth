# sample-oauth
This module lets you authenticate using OAuth 2.0 in your Spring Boot applications. 
For getting JWT token send POST request to http://localhost:8080/oauth/token URL.
with clientID, client secret and request body with user credentials and grand type 'password'
For fetching dummy data without authorization send GET request to http://localhost:8080/dummy URL. 
For fetching real data (required` authorization <JWT token>) send GET request to http://localhost:8080/real URL.
