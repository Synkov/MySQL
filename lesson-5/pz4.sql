/* 4. (�� �������) �� ������� users ���������� ������� �������������, ���������� � ������� � ���. 
������ ������ � ���� ������ ���������� �������� (may, august)
*/ 

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT '��� ����������',
  birthday_at DATE COMMENT '���� ��������',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = '����������';

INSERT INTO users (name, birthday_at) VALUES
  ('��������', '1990-10-05'),
  ('�������', '1984-11-12'),
  ('���������', '1985-05-20'),
  ('������', '1988-02-14'),
  ('����', '1998-01-12'),
  ('�����', '1992-08-29');
  

 SELECT * FROM users;

-- ��������� ���������:
-- ������� 1)

SELECT * FROM users
	WHERE birthday_at RLIKE '^[0-9]{4}-(05|08)-[0-9]{2}';

-- ������� 2)

SELECT name, birthday_at,
	CASE
		WHEN DATE_FORMAT(birthday_at, '%m') = 05 THEN 'may'
		WHEN DATE_FORMAT(birthday_at, '%m') = 08 THEN 'august'
	END AS mounth
	FROM 
		users WHERE DATE_FORMAT(birthday_at, '%m') = 05 OR DATE_FORMAT(birthday_at, '%m') = 08;

	DESCRIBE users;
	
