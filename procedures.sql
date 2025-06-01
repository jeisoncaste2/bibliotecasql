DROP PROCEDURE IF EXISTS new_PREST;

USE `biblioteca`;
DROP procedure IF EXISTS `new_PRE`;

DELIMITER $$
USE `biblioteca`$$
CREATE PROCEDURE `new_PRE` (
  IN id_lib INT,
  IN id_cliente INT,
  IN cant INT,
  IN observacion VARCHAR(50),
  IN fecha_devol DATE
)
BEGIN
  DECLARE mensaje VARCHAR(50);
  SET mensaje = fun_pres(cant);

  IF mensaje = 'PRESTAMO APROBADO' THEN
    INSERT INTO PRESTAMOS (Id_usuario, Id_libro, FECHA_Prest, Fech_Devol, Observacion, Cant_libro)
    VALUES (id_cliente, id_lib, NOW(), fecha_devol, observacion, cant);
  ELSE
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'PRESTAMO DENEGADO: demasiados libros solicitados.';
  END IF;
END$$

DELIMITER ;
