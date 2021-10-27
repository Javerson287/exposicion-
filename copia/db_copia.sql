-- Copia de seguridad
-- Fecha de creació 2021-10-27 06:48:25
-- IP donde se solicita

SET FOREIGN_KEY_CHECKS=0;truncate table ambientes;
truncate table instructores;
truncate table programas;
truncate table usuario;
truncate table prog_inst;
truncate table prestamo_ambientes;



Insert INTO usuario(id, fecha, clave, correo, nombre_usuario) VALUES('1', '2021-10-20 11:19:48', '12345', 'javerson287@gmail.com', 'Javerson');



SET FOREIGN_KEY_CHECKS=1;