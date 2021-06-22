SELECT * FROM users;

DESC profiles;
SELECT * FROM profiles;
UPDATE profiles SET photo_id = NULL;
ALTER TABLE profiles CHANGE COLUMN photo_id  photo_media_id INT UNSIGNED;
ALTER TABLE profiles ADD status_id INT UNSIGNED AUTO_INCREMENT;


UPDATE profiles SET photo_media_id = 1 + FLOOR (RAND() * 100);
UPDATE profiles SET city_id = 1 + FLOOR (RAND() * 30);
UPDATE profiles SET city_id = 1 + FLOOR (RAND() * 10);



CREATE TABLE user_statused (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
created_at DATETIME DEFAULT NOW(),
updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
);

INSERT INTO user_statused (name) VALUES ('married'), ('single');
SELECT * FROM user_statused;

UPDATE profiles SET status_id = 1 + FLOOR (RAND() * 2);


CREATE TEMPORARY TABLE genders (name char(1));
INSERT INTO genders VALUES ('m'), ('f');
UPDATE profiles SET gender = (SELECT * FROM genders  ORDER BY RAND() LIMIT 1);


SET @MIN ='2019-01-07 00:00:00';
SET @MAX ='2021-01-06 00:00:00';
UPDATE profiles SET updated_at =  TIMESTAMPADD(SECOND, FLOOR(RAND()* TIMESTAMPDIFF(SECOND, @MIN, @MAX)), @MIN);



TRUNCATE media_types;
SELECT * FROM media_types;
INSERT INTO media_types (name) VALUES
  ('photo'),
  ('video'),
  ('audio')
;

 


