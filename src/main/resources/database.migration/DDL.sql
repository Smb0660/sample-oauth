-- DDL create database
CREATE DATABASE IF NOT EXISTS sample_oauth;
USE sample_oauth;

-- DDL for creating oauth client credentials table
DROP TABLE IF EXISTS oauth_client_details;
CREATE TABLE oauth_client_details
(
    client_id               VARCHAR(256)  NOT NULL PRIMARY KEY,
    resource_ids            VARCHAR(256)  DEFAULT NULL,
    client_secret           VARCHAR(256)  NOT NULL,
    scope                   VARCHAR(256)  DEFAULT NULL,
    authorized_grant_types  VARCHAR(256)  DEFAULT NULL,
    web_server_redirect_uri VARCHAR(256)  DEFAULT NULL,
    authorities             VARCHAR(256)  DEFAULT NULL,
    access_token_validity   SMALLINT      DEFAULT NULL,
    refresh_token_validity  INTEGER       DEFAULT NULL,
    additional_information  VARCHAR(4000) DEFAULT NULL,
    autoapprove             VARCHAR(256)  DEFAULT NULL
);

-- DDL for creating users table
DROP TABLE IF EXISTS users;
CREATE TABLE users
(
    id			BIGINT AUTO_INCREMENT PRIMARY KEY,
    created_at  DATETIME         NULL,
    enabled     BIT DEFAULT b'1' NOT NULL,
    name        VARCHAR(60)      NOT NULL,
    password    VARCHAR(170)     NOT NULL,
    username    VARCHAR(50)      NOT NULL UNIQUE
);

-- DDL for creating authorities table
DROP TABLE IF EXISTS authorities;
CREATE TABLE authorities
(
    authority VARCHAR(20) NOT NULL,
    username  VARCHAR(50) NOT NULL,
    CONSTRAINT authorities_pkey
        PRIMARY KEY(authority, username)
);