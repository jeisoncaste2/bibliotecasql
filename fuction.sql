USE `biblioteca`;
DROP function IF EXISTS `fun_pres`;
USE `biblioteca`;
DROP function IF EXISTS `biblioteca`.`fun_pres`;
DELIMITER $$
USE `biblioteca`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `fun_pres`(can_prest INT) RETURNS varchar(50) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
DETERMINISTIC
BEGIN
DECLARE mensaje VARCHAR(50);
IF can_prest <= 2 THEN 
SET mensaje = 'PRESTAMO APROBADO';
ELSE 
SET mensaje = 'PRESTAMO DESAPROBADO';
END IF;
RETURN mensaje ;
END$$
DELIMITER ;
;
