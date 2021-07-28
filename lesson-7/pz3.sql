/* (по желанию) Есть таблица рейсов flights (id, from, to) и таблица городов cities (label, name).
Поля from, to и label содержат английские названия городов, поле name — русское.
Выведите список рейсов (flights) с русскими названиями городов.
*/


CREATE TABLE IF NOT EXISTS flights(
	id SERIAL PRIMARY KEY,
	`from` VARCHAR(50) NOT NULL COMMENT 'en', 
	`to` VARCHAR(50) NOT NULL COMMENT 'en'
);

CREATE TABLE  IF NOT EXISTS cities(
	label VARCHAR(50) PRIMARY KEY COMMENT 'en', 
	name VARCHAR(50) COMMENT 'ru'
);

ALTER TABLE flights
ADD CONSTRAINT fk_from_label
FOREIGN KEY(`from`)
REFERENCES cities(label);

ALTER TABLE flights
ADD CONSTRAINT fk_to_label
FOREIGN KEY(`to`)
REFERENCES cities(label);

INSERT INTO cities VALUES
	('Moscow', 'Москва'),
	('Novorod', 'Новгород'),
	('Irkutsk', 'Иркустк'),
	('Omsk', 'Омск'),
	('Kazan', 'Казань');

	INSERT INTO flights VALUES
	(NULL, 'Moscow', 'Omsk'),
	(NULL, 'Novorod', 'Kazan'),
	(NULL, 'Irkutsk', 'Moscow'),
	(NULL, 'Omsk', 'Irkutsk'),
	(NULL, 'Moscow', 'Kazan');



SELECT
	id,
	(SELECT name FROM cities WHERE label = `from`) AS `from`,
	(SELECT name FROM cities WHERE label = `to`) AS `to`
FROM
	flights
ORDER BY
	flight_id;