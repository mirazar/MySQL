DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED,
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
);

INSERT INTO storehouses_products (storehouse_id, product_id, value) VALUES
  (1, 1, 15),
  (1, 90, 0),
  (1, 30, 10),
  (1, 8, 3),
  (1, 2, 5),
  (1, 8, 0);
  
SELECT * FROM storehouses_products ORDER BY IF(value > 0, 0, 1), value;