DROP DATABASE IF EXISTS hw5_1;
CREATE DATABASE hw5_1;
USE hw5_1;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(150),
  created_at VARCHAR (150),
  updated_at VARCHAR (150)
);
INSERT INTO users (name, created_at, updated_at) VALUES ('Viktor', '20.10.2017 8:10', '20.10.2017 8:10');


UPDATE users
SET
created_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i'),
updated_at = STR_TO_DATE(updated_at, '%d.%m.%Y %k:%i');

ALTER TABLE users
CHANGE
created_at created_at DATETIME DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE users
CHANGE
updated_at updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

SELECT * FROM users;
DESC users;