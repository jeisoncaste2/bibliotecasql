DROP  FUNCTION fun_validar_multa;
DELIMITER $$

CREATE FUNCTION fun_validar_multa(monto INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
   DECLARE resultado VARCHAR(50);

   IF monto <= 100000 THEN
      SET resultado = 'MULTA VÁLIDA';
   ELSE
      SET resultado = 'MONTO EXCESIVO';
   END IF;

   RETURN resultado;
END$$

DELIMITER ;
