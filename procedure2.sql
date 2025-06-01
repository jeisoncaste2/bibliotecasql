DROP PROCEDURE new_multa;
DELIMITER $$
CREATE PROCEDURE new_multa (
IN p_id_usuario INT,
IN p_monto INT,
IN p_motivo VARCHAR(50),
IN p_estado VARCHAR(50)
)
BEGIN
DECLARE validacion VARCHAR(50);
SET validacion = fun_validar_multa(p_monto);
IF validacion = 'MULTA VÁLIDA' THEN
INSERT INTO MULTAS (Id_usuario, monto, motivo, estado, fecha_registr)
VALUES (p_id_usuario, p_monto, p_motivo, p_estado, NOW());
ELSE
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'MONTO EXCESIVO PARA MULTA.';
END IF;
END$$
DELIMITER ;
