SELECT 
	p.id, p.name, p.price,
	c.id AS catalog_id,
	c.name AS 'catalog'
FROM
	products AS p
JOIN
	catalogs AS c
ON 
	p.catalog_id = c.id; 
