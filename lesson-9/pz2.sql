/* 2.  Создайте представление, которое выводит название name товарной позиции из таблицы products 
	и соответствующее название каталога name из таблицы catalogs.
*/

CREATE OR REPLACE VIEW products_catalogs AS
SELECT products.name AS p_name, catalogs.name AS c_name
FROM products, catalogs
WHERE products.catalog_id = catalogs.id;

SELECT * FROM products_catalogs;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  