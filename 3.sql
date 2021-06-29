SELECT IF(
	(SELECT COUNT(id) FROM likes WHERE user_id IN 
		(SELECT user_id FROM profiles WHERE gender = "m"))
	> 
	(SELECT COUNT(id) FROM likes WHERE user_id IN 
		(SELECT user_id FROM profiles WHERE gender = "f")),
   'male', 'female');