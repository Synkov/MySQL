create database if not exists example;
create database if not exists sample;
use example;
drop table if exists users;
create table users(
	id SERIAL primary key,
	name varchar(100) not null COMMENT 'имя пользователя'
)COMMENT='Примерная таблица';
