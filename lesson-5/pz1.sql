/* 1. ����� � ������� users ���� created_at � updated_at ��������� ��������������. ��������� �� �������� ����� � ��������.*/

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��� ����������',
  birthday_at DATE COMMENT '���� ��������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '����������';

INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES
  ('��������', '1990-10-05', NULL, NULL),
  ('�������', '1984-11-12', NULL, NULL),
  ('���������', '1985-05-20', '2021-05-20', NULL),
  ('������', '1988-02-14', NULL, '2021-07-20');

 
 SELECT * FROM users;
 

 UPDATE users
 	SET
 		created_at = NOW(),
 		updated_at  = NOW();
 
 		
 SELECT * FROM users;
 