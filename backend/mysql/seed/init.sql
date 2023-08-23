DROP DATABASE IF EXISTS mdr_db;
CREATE DATABASE mdr_db;
USE mdr_db;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS daily_reports;
DROP TABLE IF EXISTS achievements;

CREATE TABLE users(
    id bigint(20) unsigned NOT NULL,
    name text NOT NULL,
    password text NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE daily_reports(
    id bigint(20) unsigned NOT NULL,
    userId bigint(20) NOT NULL,
    achievementId bigint(20) NOT NULL,
    done text,
    keep text,
    problem text,
    try text,
    okimochi text,
    PRIMARY KEY(id)
);

CREATE TABLE achievements(
    id bigint(20) unsigned NOT NULL,
    userId bigint(20) NOT NULL,
    achievement text NOT NULL,
    PRIMARY KEY(id)
);
