/* 3. ¬ таблице складских запасов storehouses_products в поле value могут встречатьс€ самые разные цифры: 0, 
если товар закончилс€ и выше нул€, если на складе имеютс€ запасы. Ќеобходимо отсортировать записи таким образом, 
чтобы они выводились в пор€дке увеличени€ значени€ value. ќднако нулевые запасы должны выводитьс€ в конце, после всех записей.
*/

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT '«апас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '«апасы на складе';


SELECT * FROM storehouses_products;


INSERT INTO storehouses_products
	(`value`)
VALUES
	(0),
	(2500),
	(0),
	(30),
	(500),
	(1);

SELECT * FROM storehouses_products
	ORDER BY if(value > 0, 0, 1), value;


DESCRIBE storehouses_products;

