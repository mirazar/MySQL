DROP DATABASE IF EXISTS hw5_1;
CREATE DATABASE hw5_1;
USE hw5_1;


DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(150),
  created_at DATETIME DEFAULT NULL,
  updated_at DATETIME DEFAULT NULL
);


INSERT INTO users (name) VALUES ('Viktor');

UPDATE users SET created_at = NOW(),
	updated_at = NOW();


SELECT * FROM users;