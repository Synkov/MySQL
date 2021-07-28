/* 1. ����� ����� ��������� ������������. 
�� ���� ������ ����� ������������ ������� ��������, ������� ������ ���� ������� � ����� ��������������.
*/

SELECT count(*) AS messages, friend FROM 
	(SELECT to_user_id AS friend FROM messages WHERE from_user_id = 501
	 UNION
	 SELECT from_user_id AS friend FROM messages WHERE to_user_id = 501) AS send

GROUP BY friend
ORDER BY messages DESC
LIMIT 1;

