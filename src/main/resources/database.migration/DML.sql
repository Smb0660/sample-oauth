/*
    DML for inserting client details .
    Access token validity 3600 seconds .
    Refresh token validity 210000 seconds.
*/
INSERT INTO oauth_client_details (client_id, resource_ids, client_secret, scope,
                                  authorized_grant_types, authorities, access_token_validity, refresh_token_validity)
VALUES ('sample-oauthID', 'oauth2-resource', '{bcrypt}$2a$10$IIm4iggiA/7DSpsLqE46OeCaVCVehe0iShq9OSNzrH93QKfijmbFi',
        'read,write', 'password,refresh_token,client_credentials', 'ROLE_CLIENT', 3600, 210000);

-- DML for inserting user.
INSERT INTO users (created_at, name, password, username)
VALUES (LOCALTIMESTAMP(),'John','{bcrypt}$2a$10$Oc0gn.DONJ74kgZRjz4kaefq5ZQdaoP/dlaE7UUaQunJugjfaalp2','John001')

--DML for inserting authorities
INSERT INTO authorities (authority,username) VALUES ('ROLE_USER','John001');