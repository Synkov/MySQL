DELIMITER //

DROP FUNCTION IF EXISTS hello//
CREATE FUNCTION hello() 
RETURNS TEXT DETERMINISTIC
BEGIN
  RETURN CASE
      WHEN "06:00" <= CURTIME() AND CURTIME() < "12:00" THEN "������ ����"
      WHEN "12:00" <= CURTIME() AND CURTIME() < "18:00" THEN "������ ����"
      WHEN "18:00" <= CURTIME() AND CURTIME() < "00:00" THEN "������ �����"
      ELSE "������ ����"
    END;
END //


delimiter ;

SELECT hello(); 