USE `biblioteca`;
DROP procedure IF EXISTS `new_PREST`;

DELIMITER $$
USE `biblioteca`$$
CREATE PROCEDURE `new_PREST` (

IN can_prest INT,
IN id_cliente INT
)
BEGIN
DECLARE Cant_libro INT;
Set Cant_libro = fun_prest(cant_prest);
insert into PRESTAMOS (Id_prestamo,Id_usuario,Id_libro ,FECHA_Prest,Fech_Devol ,Observacion,Cant_libro) VALUES (Id_prestamo,Id_usuario, Id_libro ,NOW(),FECHA_Devol,Observacion,Cant_libro);
END$$

DELIMITER ;