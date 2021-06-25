SELECT
	DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday), DAY(birthday))), '%W') AS day, COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC;