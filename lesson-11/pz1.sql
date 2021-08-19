/* 1. �������� ������� logs ���� Archive. ����� ��� ������ �������� ������ � �������� users, catalogs � products � ������� logs ���������� ����� � 
		���� �������� ������, �������� �������, ������������� ���������� ����� � ���������� ���� name
*/


CREATE TABLE logs (
  table_name VARCHAR(20) NOT NULL,
  pk_id INT UNSIGNED NOT NULL,
  name VARCHAR(255),
  created_at DATETIME DEFAULT NOW()
) ENGINE=ARCHIVE;


CREATE TRIGGER users_log AFTER INSERT ON users FOR EACH ROW
  INSERT INTO logs 
    SET 
      table_name = 'users',
      pk_id = NEW.id,
      name = NEW.name;

CREATE TRIGGER catalogs_log AFTER INSERT ON catalogs FOR EACH ROW
  INSERT INTO logs 
    SET 
      table_name = 'catalogs',
      pk_id = NEW.id,
      name = NEW.name;

CREATE TRIGGER products_log AFTER INSERT ON products FOR EACH ROW
  INSERT INTO logs 
    SET 
      table_name = 'products',
      pk_id = NEW.id,
      name = NEW.name;
      
     
 
// 1. � ���� ������ Redis ��������� ��������� ��� �������� ��������� � ������������ IP-�������.

SADD ip '127.0.0.1' '127.0.0.2' '127.0.0.3' 
// ���������� �������� � ��������� ��� ���������� � ��� ip �����, ������ ���������� ��������
SADD ip '127.0.0.1' 
// ���������� ������ ���������� ip
SMEMBERS ip
// ���-�� ������� � ���������
SCARD ip



// 2. ��� ������ ���� ������ Redis ������ ������ ������ ����� ������������ �� ������������ ������
// � �������, ����� ������������ ������ ������������ �� ��� �����.

set aleksei@mail.ru aleksei
set aleksei aleksei@mail.ru

get aleksei@mail.ru 
get alesei 



// 3. ����������� �������� ��������� � �������� ������� ������� ���� ������ shop � ���� MongoDB.


//  ����. products
use products
db.products.insert({"name": "Intel Core i3-8100", "description": "��������� ��� ���������� ��", "price": "8000.00", "catalog_id": "����������", "created_at": new Date(), "updated_at": new Date()}) 

db.products.insertMany([
	{"name": "AMD FX-8320", "description": "��������� ��� ���������� ��", "price": "4000.00", "catalog_id": "����������", "created_at": new Date(), "updated_at": new Date()},
	{"name": "AMD FX-8320E", "description": "��������� ��� ���������� ��", "price": "4500.00", "catalog_id": "����������", "created_at": new Date(), "updated_at": new Date()}])

db.products.find().pretty()
db.products.find({name: "AMD FX-8320"}).pretty()


// ����. catalogs
use catalogs
db.catalogs.insertMany([{"name": "����������"}, {"name": "���.�����"}, {"name": "����������"}])