# OAuth Sample
This module lets you authenticate using OAuth 2.0 in your Spring Boot applications.

### Database
To use this module,first you must build the database․
In project resouce->database->migration folder you can find DDL.sql and DML.sql files.
First just copy DDL.sql and paste in your client application (for example MySQL Workbench, DataGrip etc.),
and after that copy and DML.sql file.

## Postman
You can use postman for sending requests.

#### Run application
Run application in your local machine
#### Postman
Open Postman Desktop.
You can't send requests from Postman Web because you must working with localhost
## Authentication

#### Postman
Move into Authorization section.Under Configure New Token --> Configuration Options
###### Grant Type : Password Credentials
###### Access Token URL : http://localhost:8080/oauth/token
###### Client ID : sample-oauthID
###### Client Secret : simple
###### Username : John001
###### Password : simple
###### Client Authentication : Send as Basic Auth Header
##### And finally click Get New Access Token


#### Get Dummy
For getting dummy values authentication is not required.
```http
  GET /dummy
```

#### Get Real
For getting real values you must be authorized.
##### Provide your access token in postman Authorization section
```http
  GET /real
```
