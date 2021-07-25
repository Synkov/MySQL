DROP DATABASE IF EXISTS kinopoisk;
CREATE DATABASE kinopoisk;
USE kinopoisk;

-- Создадим таблицу Пользователи

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	firstname varchar(255) NOT NULL,
	lastname varchar(255),
	email varchar(100) UNIQUE, 
	password_hash varchar(100),
	
	INDEX users_first_name_last_name_idx(firstname, lastname)
);


-- Создадим таблицу Профиль пользователя

DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles (
	user_id SERIAL,
    gender CHAR(1),
    birthday DATE,
    description_user text,
	photo_id bigint UNSIGNED NULL,
    created_at datetime DEFAULT now(),
    country varchar(100),

    FOREIGN KEY (user_id) REFERENCES users(id)		-- Создадим внешний ключ для таблицы profiles и users
	ON UPDATE CASCADE	  	-- (значение по умолчанию)
    ON DELETE RESTRICT		-- (значение по умолчанию)
);
   

-- Создадим таблицу Друзья
    
DROP TABLE IF EXISTS friend_requests;
CREATE TABLE friend_request (
	-- id SERIAL, -- изменили на составной ключ (initiator_user_id, target_user_id)
	initiator_user_id bigint UNSIGNED NOT NULL,
	target_user_id bigint UNSIGNED NOT NULL,
	`status` ENUM('requested', 'approved', 'declined', 'unfriended'),	-- Описываем возможные статусы (запрос, подтверждение, отклонение, удаление из друзей)
	requested_at datetime DEFAULT NOW(),
	updated_at datetime ON UPDATE CURRENT_TIMESTAMP, -- можно будет даже не упоминать это поле при обновлении
	
	PRIMARY KEY (initiator_user_id, target_user_id),
    FOREIGN KEY (initiator_user_id) REFERENCES users(id),
    FOREIGN KEY (target_user_id) REFERENCES users(id)
);


-- Создадим таблицу Сообщение

DROP TABLE IF EXISTS messages;
CREATE TABLE messages(
	id SERIAL PRIMARY KEY,
	from_user_id bigint UNSIGNED NOT NULL, -- отправитель
	to_user_id bigint UNSIGNED NOT NULL, -- получатель
	body text,	-- сообщение
	created_at datetime DEFAULT now(),	-- дата и время сообщения
	
	FOREIGN KEY (from_user_id) REFERENCES users(id),
	FOREIGN KEY (to_user_id) REFERENCES users(id)	
);
    

-- Создадим таблицу Рейтинг фильма

drop table if exists rating_movie;
create table rating (
	id SERIAL primary key,
	user_id bigint UNSIGNED NOT NULL,
	movie_id bigint UNSIGNED NOT NULL,
	rating int,
	created_at datetime DEFAULT NOW()
);


-- Создадим таблицу Жанры

DROP TABLE IF EXISTS genres;
CREATE TABLE genres (
	id SERIAL PRIMARY KEY,
	genre varchar (100)
);


-- Создадим таблицу Год создания фильма

DROP TABLE IF EXISTS years;
CREATE TABLE years (
	id SERIAL PRIMARY KEY,
	`year` YEAR
);


-- Создадим таблицу Страна производства

DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
	id SERIAL PRIMARY KEY,
	country varchar(100)
);


-- Создадим таблицу Фильмы
DROP TABLE IF EXISTS movies;
CREATE TABLE movies (
	id SERIAL primary key,
	name varchar(100) NOT NULL,
	movie_description text,
	country_production_id bigint UNSIGNED NOT NULL,
	movie_year_id bigint UNSIGNED NOT NULL,
	movie_genre_id bigint UNSIGNED NOT NULL,
	
	FOREIGN KEY (country_production_id) REFERENCES countries(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	
	FOREIGN KEY (movie_year_id) REFERENCES years(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,

	FOREIGN KEY (movie_genre_id) REFERENCES genres(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

-- Создадим таблицу Актеры

DROP TABLE IF EXISTS actors;
CREATE TABLE actors(
	id SERIAL PRIMARY KEY,
	firstname varchar(100) NOT NULL,
	lastname varchar(100) NOT NULL,
	country_id bigint UNSIGNED NOT NULL,
	movie_id bigint UNSIGNED NOT NULL,

	FOREIGN KEY (country_id) REFERENCES countries(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
		
	FOREIGN KEY (movie_id) REFERENCES movies(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

-- Создадим таблицу Ограничение (по возрасту)

DROP TABLE IF EXISTS limits;
CREATE TABLE limits (
	id SERIAL PRIMARY KEY,
	age ENUM('6+', '12+', '16+', '18+'),
	movie_id bigint UNSIGNED NOT NULL,
	user_id bigint UNSIGNED NOT NULL,
	
	FOREIGN KEY (movie_id) REFERENCES movies(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,	
	
	FOREIGN KEY (user_id) REFERENCES users(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE		
);


-- Создадим таблицу Новости

DROP TABLE IF EXISTS news;
CREATE TABLE news (
	id SERIAL PRIMARY KEY,
	title varchar(100) NOT NULL,
	description text,
	created_at date
);

-- Создадим таблицу Комментарии

DROP TABLE IF EXISTS comments;
CREATE TABLE comments (
	id SERIAL PRIMARY KEY,
	user_id bigint UNSIGNED NOT NULL,
	news_id bigint UNSIGNED NOT NULL,
	movie_id bigint UNSIGNED NOT NULL,
	comment text,
	created_at date,

	FOREIGN KEY (news_id) REFERENCES news(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,

	FOREIGN KEY (user_id) REFERENCES users(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
		
	FOREIGN KEY (movie_id) REFERENCES movies(id)		
		ON DELETE CASCADE
		ON UPDATE CASCADE
);
