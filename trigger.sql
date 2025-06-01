DELIMITER $$
CREATE TRIGGER trg_update_cant_disp
AFTER INSERT ON PRESTAMOS
FOR EACH ROW
BEGIN
UPDATE LIBRO
SET cant_dispon = cant_dispon - NEW.Cant_libro
WHERE Id_libro = NEW.Id_libro;
END$$
DELIMITER ;
