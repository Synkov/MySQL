/* 1. � ���� ������ shop � sample ������������ ���� � �� �� �������, ������� ���� ������. 
 ����������� ������ id = 1 �� ������� shop.users � ������� sample.users. ����������� ����������.
*/

START TRANSACTION;
INSERT 
	sample.users
SELECT * FROM shop.users 
	WHERE shop.users.id = 1;�
-- DELETE FROM shop.users WHERE id = 1;  ���� �����������, �� ������ �� shop, �� ���������� ��-�� ������. 
COMMIT;