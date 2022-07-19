-- DDL for creating OAuth clients details.
drop table if exists oauth_client_details
create table oauth_client_details
(
    client_id               varchar(256)  not null
        primary key,
    resource_ids            varchar(256)  null,
    client_secret           varchar(256)  not null,
    scope                   varchar(256)  null,
    authorized_grant_types  varchar(256)  null,
    web_server_redirect_uri varchar(256)  null,
    authorities             varchar(256)  null,
    access_token_validity   smallint      null,
    refresh_token_validity  int           null,
    additional_information  varchar(4000) null,
    autoapprove             varchar(256)  null
);

-- DDL for creating users table
drop table if exists users
create table users
(
    id         bigint auto_increment
        primary key,
    created_at datetime         null,
    enabled    bit default b'0' not null,
    name       varchar(60)      not null,
    password   varchar(170)     not null,
    username   varchar(50)      not null,
    constraint UK_r43af9ap4edm43mmtq01oddj6
        unique (username)
);

-- DDL for creating authorities table
drop table if exists authorities
create table authorities
(
    authority varchar(255) not null,
    username  varchar(255) not null,
    constraint authorities_pkey
        primary key (authority, username)
);

