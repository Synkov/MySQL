/* 2. ������� users ���� �������� ��������������. ������ created_at � updated_at ���� ������ ����� VARCHAR � � ��� ������ ����� ���������� 
	�������� � ������� 20.10.2017 8:10. ���������� ������������� ���� � ���� DATETIME, �������� �������� ����� ��������.*/

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��� ����������',
  birthday_at DATE COMMENT '���� ��������',
  created_at varchar(255),	 		-- DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at varchar(255)			-- DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '����������';

INSERT INTO users (created_at, updated_at) VALUES
  ('20.10.2017 08:10', '20.11.2018 11:10'),
  ('21.07.2019 1:30', '10.01.2021 8:28');

 
SELECT * FROM users;  


UPDATE users 
	SET
		created_at = STR_TO_DATE(created_at, '%d.%m.%Y %H:%i'),
		updated_at = STR_TO_DATE(updated_at , '%d.%m.%Y %H:%i');

ALTER TABLE users 
    CHANGE COLUMN created_at created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    CHANGE COLUMN updated_at updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;
   
SELECT * FROM users;
describe users;

