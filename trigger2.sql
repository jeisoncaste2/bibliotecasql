DROP TRIGGER trg_bloquear_por_multa;
DELIMITER $$
CREATE TRIGGER trg_bloquear_por_multa
AFTER INSERT ON MULTAS
FOR EACH ROW
BEGIN
IF NEW.estado = 'Pendiente' THEN
UPDATE USUARIOS
SET estado = 'Inactivo'
WHERE Id_usuario = NEW.Id_usuario;
END IF;
END$$
DELIMITER ;
