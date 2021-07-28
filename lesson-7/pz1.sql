ALTER TABLE orders 
CHANGE COLUMN 
	user_id user_id BIGINT(20) UNSIGNED NOT NULL;

ALTER TABLE orders
ADD CONSTRAINT fk_user_id
FOREIGN KEY (user_id)
REFERENCES users(id)
ON DELETE RESTRICT
ON UPDATE RESTRICT;


ALTER TABLE orders 
CHANGE COLUMN
	catalog_id catalog_id BIGINT(20) UNSIGNED NOT NULL;


ALTER TABLE orders
ADD CONSTRAINT fk_catalog_id
FOREIGN KEY (catalog_id)
REFERENCES catalogs(id)
ON DELETE RESTRICT
ON UPDATE RESTRICT;


UPDATE orders
SET created_at = NOW()
WHERE created_at is NULL;

UPDATE orders
SET updated_at = NOW()
WHERE created_at is NULL;


ALTER TABLE orders_products 
CHANGE COLUMN
	order_id order_id BIGINT(20) UNSIGNED NOT NULL;


ALTER TABLE orders_products 
CHANGE COLUMN
	product_id product_id BIGINT(20) UNSIGNED NOT NULL;


ALTER TABLE orders_products
ADD CONSTRAINT fk_order_id
FOREIGN KEY(order_id)
REFERENCES orders(id)
ON DELETE RESTRICT 
ON UPDATE RESTRICT;


ALTER TABLE orders_products
ADD CONSTRAINT fk_order_product_id
FOREIGN KEY(product_id)
REFERENCES products(id)
ON DELETE RESTRICT 
ON UPDATE RESTRICT;


INSERT INTO orders(user_id)
VALUES
(1),
(3); 


INSERT INTO orders_products(order_id, product_id)
VALUES
	(1, 1),
	(1, 2);


INSERT INTO orders_products(order_id, product_id)
VALUES
	(2, 1),
	(2, 2);


INSERT INTO orders_products(order_id, product_id, total)
VALUES
	(4, 1, 1),
	(4, 4, 3),
	(4, 5, 2);


SELECT 
	u.id AS user_id, u.name,
	o.id AS order_id
FROM 
	users AS u
RIGHT JOIN
	orders AS o 
ON
	u.id = o.user_id;


