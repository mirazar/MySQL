DESC profiles;

ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_media_id_fk
    FOREIGN KEY (photo_media_id) REFERENCES media(id)
      ON DELETE RESTRICT;
  ADD CONSTRAINT profiles_status_id_fk
    FOREIGN KEY (status_id) REFERENCES status(id)
      ON DELETE RESTRICT,
  ADD CONSTRAINT profiles_city_id_fk
    FOREIGN KEY (city_id) REFERENCES city(id)
      ON DELETE RESTRICT,
  ADD CONSTRAINT profiles_country_id_fk
    FOREIGN KEY (country_id) REFERENCES country(id)
      ON DELETE RESTRICT;
     
     
DESC 	communities_users;
ALTER TABLE communities_users
  ADD CONSTRAINT communities_users_community_id_fk
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE RESTRICT,
  ADD CONSTRAINT communities_users_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE RESTRICT;


ALTER TABLE friendships
  ADD CONSTRAINT friendships_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE RESTRICT,
  ADD CONSTRAINT friendships_friend_id_fk
    FOREIGN KEY (friend_id) REFERENCES users(id)
      ON DELETE RESTRICT,
  ADD CONSTRAINT friendships_status_id_fk
    FOREIGN KEY (status_id) REFERENCES friendship_statuses(id)
      ON DELETE RESTRICT;


ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk
    FOREIGN KEY (from_user_id) REFERENCES users(id)
      ON DELETE RESTRICT,
  ADD CONSTRAINT messages_to_user_id_fk
    FOREIGN KEY (to_user_id) REFERENCES users(id)
      ON DELETE RESTRICT;
     

ALTER TABLE posts
  ADD CONSTRAINT posts_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE RESTRICT,
   ADD CONSTRAINT posts_community_id_fk
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE RESTRICT,
  ADD CONSTRAINT posts_media_id_fk
    FOREIGN KEY (media_id) REFERENCES media(id)
      ON DELETE RESTRICT;
    

ALTER TABLE likes
  ADD CONSTRAINT likes_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE RESTRICT,
  ADD CONSTRAINT likes_target_types_id_fk
    FOREIGN KEY (target_type_id) REFERENCES target_types(id)
      ON DELETE RESTRICT,
  ADD CONSTRAINT likes_target_id_fk
    FOREIGN KEY (target_id) REFERENCES messages(id)
      ON DELETE RESTRICT,
  ADD CONSTRAINT likes_target_user_id_fk
   FOREIGN KEY (target_id) REFERENCES users(id)
     ON DELETE RESTRICT,
  ADD CONSTRAINT likes_target_media_id_fk
   FOREIGN KEY (target_id) REFERENCES media(id)
     ON DELETE RESTRICT,
  ADD CONSTRAINT likes_target_posts_id_fk
   FOREIGN KEY (target_id) REFERENCES posts(id)
     ON DELETE RESTRICT;
    



