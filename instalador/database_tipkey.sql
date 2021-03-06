
DROP TABLE IF EXISTS ambientes;
CREATE TABLE ambientes(
    `no` INT(20) NOT NULL AUTO_INCREMENT,
    cede VARCHAR(20)NOT NULL,
    nom_aula VARCHAR(20) NOT NULL,
    PRIMARY KEY (`no`)
);

DROP TABLE IF EXISTS programas;
CREATE TABLE programas(
    ficha int(15) NOT NULL,
    nom_programa VARCHAR(50) NOT NULL,
   
    PRIMARY KEY(ficha)
);

DROP TABLE IF EXISTS instructores;
CREATE TABLE instructores (
    No_documento int(15) NOT NULL,
    nom_instructor varchar (30)NOT NULL,
    PRIMARY KEY (No_documento)
);


CREATE TABLE prog_inst(
    ficha int(15) NOT NULL,
    No_documento int(15) NOT NULL,
    PRIMARY KEY (ficha, No_documento)
);

DROP TABLE IF EXISTS usuario;
CREATE TABLE usuario(
    id INT(11) NOT NULL AUTO_INCREMENT,
    fecha TIMESTAMP NOT NULL,
    clave VARCHAR(90) NOT NULL,
    correo VARCHAR(30) NOT NULL,
    nombre_usuario VARCHAR(20) NOT NULL,
    borrar INT (2),
    PRIMARY KEY(id)
);


DROP TABLE IF EXISTS prestamo_ambientes;
CREATE TABLE prestamo_ambientes(
    fecha_registro timestamp NOT NULL,
    No_documento int (15) NOT NULL,
    hora_ingreso TIME NOT NULL,
    hora_salida TIME  NOT NULL,
    observaciones varchar (100),
    `no`INT (20) NOT NULL,
    id int(11) DEFAULT NULL,
    fecha_prestamo date NOT NULL,
    fecha_devolucion date NOT NULL,
    PRIMARY KEY (fecha_registro)
);

DROP TABLE IF EXISTS re_drop;
CREATE TABLE re_drop (
    id int(11) NOT NULL AUTO_INCREMENT,
    descripcion varchar(200) NOT NULL,
    fecha_registro datetime NOT NULL,
    PRIMARY KEY (id)       
);

DROP TABLE IF EXISTS informe;
CREATE TABLE informe
(
indice VARCHAR(50) NULL,
sub_indice VARCHAR(50) NULL,
li VARCHAR(90) NULL,
li2 VARCHAR(90) NULL,
li3 VARCHAR(90) NULL,
li4 VARCHAR(90) NULL,
text VARCHAR(1000) NULL,
text2 VARCHAR(1000) NULL,
text3 VARCHAR(1000) NULL,
text4 VARCHAR(1000) NULL,
text5 VARCHAR(1000) NULL,
text6 VARCHAR(1000) NULL
);


INSERT informe(indice, text, li, li2, li3, li4, text3, text4, text5, text6) VALUES ('PUESTA EN MARCHA', 'Para la ??ptima instalaci??n del sistema de informaci??n usted deber?? cumplir con los siguientes requisitos para su ??ptimo funcionamiento:', '???   Conexi??n a internet  3G o 4G.','???    Sistema operativo Windows 7 o superior.', '???    Navegador Google Chrome, Firefox, Opera o Safari.', '???   Equipo de 4 gbs de RAM y un Intel core 2 duo o un AMD Athlon.', 'Este sistema de informaci??n fue hecho con los lenguajes HTML5, CSS3, JAVASCRIPT, PHP 7.4.12 y como gestor de bases de datos MYSQL en su versi??n MARIADB.', 'El correo electr??nico para el soporte del sistema de informaci??n es: damh1006@gmail.com.', 'El personal id??neo para la instalaci??n de este software debe tener conocimientos b??sicos de inform??tica, para la digitaci??n de datos en la web, no debe tener titulaci??n de programas avanzados o de nivel t??cnico, solo deber?? tener a la mano el manual de usuario para la instalaci??n y la informaci??n a ingresar para la posterior instalaci??n del sistema.', 'Se aclara que este sistema de informaci??n no genera gran impacto ambiental debido a que esta optimizado para equipos de bajos recursos y tiene un bajo impacto en el consumo energ??tico.');

INSERT informe(indice, text, text2, text3, text4) VALUES ('CONFIDENCIALIDAD, INTEGRIDAD Y DISPONIBILIDAD', 'SEGURIDAD: nuestro sistema de informaci??n cuenta con un sistema de seguridad de inicio de sesi??n con correo y contrase??a, las cuales se guardaran en la base de datos y se encriptaran de tal manera que ser?? complicado para un tercero acceder a la informaci??n desde fuera del apartado del administrador.', 'El sistema de informaci??n cuenta con un sistema de recuperaci??n de contrase??a para el administrador que le permitir?? modificar dicha contrase??a en caso de p??rdida de la misma.', 'Por otro lado, nuestro sistema de informaci??n no le pedir?? al usuario pagos mediante la aplicaci??n, tampoco se dejara ver la informaci??n de las empresas sin antes haberse registrado como usuario, esto para garantizar la seguridad de las empresas y as?? mismo poder confirmar, en caso de extorci??n u otro delito derivado, que usuario/os probablemente hicieron o cometieron dicha falta.', 'Por ??ltimo, cabe aclarar que nuestro software no le pedir?? al usuario datos muy personales como lo son: N??mero de tarjeta de cr??dito, pagos a ciertos convenios, su contrase??a de otras redes sociales, direcci??n de su lugar de estad??a ni nada que tenga que ver con su ubicaci??n o datos bancarios.');

INSERT informe(indice, text, text2, text3, text4) VALUES ('COPIAS DE SEGURIDAD Y MIGRACION.','El sistema de informaci??n cuenta con un sistema de copia de seguridad de la informaci??n semanal el cual le permitir?? al administrador tener todos los datos a salvo previniendo una posible falla en el sistema, adem??s de ello el sistema cuenta con una gran adaptabilidad, eficiencia de ejecuci??n y manejo intuitivo para su instalaci??n y migraci??n de informaci??n.', 'El proceso de instalaci??n y migraci??n tiene soporte para hacerse tanto desde computadoras hasta dispositivos m??viles.', 'Para poder utilizar el sistema de informaci??n deber?? tener acceso a internet y podr?? ver la informaci??n all?? alojada siempre y cuando ya se haya hecho la previa instalaci??n e inserci??n de datos por parte del administrador, debido a que, este siempre iniciara con la vista de los usuarios donde tienen varias funciones, que permiten ver la informaci??n de todas las empresas, productos y dem??s apartados p??blicos.', 'De la parte del administrador podr?? ingresar con correo y contrase??a al sistema de informaci??n, en caso de p??rdida de la contrase??a se le permitir?? cambiarla de manera r??pida y eficiente.');

INSERT informe(indice, text, text2, text3, text4) VALUES ('ACCESIBILIDAD, USABILIDAD Y LICENCIAMIENTO', 'El sistema cuenta con un f??cil y seguro sistema de acceso para el administrador, debido a que esta es la primera versi??n del software, el mismo solo tendr?? una cuenta de administrador y los usuarios ser??n todos aquellos que visiten la p??gina, optando as?? por un modelo de no tener usuarios registrados, por lo cual el sistema ser?? a??n m??s liviano.', 'En el apartado de la usabilidad tenemos que los usuarios podr??n interactuar con los botones, podr??n ver mucha de la informaci??n que es publica, adem??s de poder contactar y ver disponibilidad de productos dependiendo de la empresa.', 'El sistema cuenta con una paleta de colores simple, de tal manera que a pesar de tener poco colores, todos combinan entre si dando armon??a al dise??o.', 'El c??digo del sistema de informaci??n cuenta con c??digo documentado, de manera que cualquier otro programador pueda entender el que, el c??mo y el porqu?? de las diferentes funciones para as?? poder dar mantenimiento al sistema.');

INSERT informe(indice, text, text2, text3) VALUES ('INFORME ADMINISTRATIVO', 'En nuestro sistema de informaci??n podr?? encontrar alojado el informe administrativo, con el fin de buscar apartado de inter??s para las personas, lo cual puede ser los t??rminos y condiciones o dem??s informaci??n importante para el correcto uso del software.', 'Lastimosamente, el software no es perfecto, a??n tiene algunas cosas que se pueden mejorar, puesto que esta es la primera versi??n del mismo, por lo cual hay procesos que no est??n del todo optimizados, sin embargo, este software se ha hecho lo m??s eficiente posible para solucionar las problem??ticas planteadas por el cliente.','Durante alg??n tiempo se tuvo inconvenientes con la parte visual, algunas funcionalidades de parte del backend y otras falencias en el c??digo o la l??gica aplicada al sistema. Esto ya no ha de ser un problema tan grande, debido a que gracias al tiempo estipulado para entregar el proyecto, se ha ido mejorando poco a poco y reparando algunas falencias encontradas en el camino.');

INSERT informe(indice, text, text2, text3,text4, text5,text6) VALUES ('FORTALEZAS Y DEBILIDADES DEL SISTEMA','Fortalezas:','Gracias a nuestro dise??o interactivo, el usuario tiene cierta facilidad de entender las diferentes funcionalidades del software.', 'El software cuenta con un sistema de encriptaci??n, el cual ayuda a mantener a salvo ciertos datos de los usuarios.','Debilidades:','Durante un tiempo algunas de nuestras secciones tuvieron un dise??o deficiente por falta de adaptaci??n al momento de cambiar el tama??o de la pantalla.', 'La herramienta que ayuda a realizar la busqueda de disponibilidad de ambientes, no cuenta con una gran funcionalidad.');


ALTER TABLE prestamo_ambientes
    ADD CONSTRAINT prestamo_1 FOREIGN KEY (id)
    REFERENCES usuario (id) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD CONSTRAINT prestamo_2 FOREIGN KEY (`no`) 
    REFERENCES ambientes (`no`) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD CONSTRAINT prestamo_3 FOREIGN KEY (`No_documento`) 
    REFERENCES instructores (`No_documento`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE prog_inst
    ADD CONSTRAINT instructores_1 FOREIGN KEY (`No_documento`) 
    REFERENCES instructores (`No_documento`) ON DELETE CASCADE ON UPDATE CASCADE,   
    ADD CONSTRAINT programas_1 FOREIGN KEY (ficha) 
    REFERENCES programas (ficha) ON DELETE CASCADE ON UPDATE CASCADE;

DELIMITER //
CREATE PROCEDURE dd (IN fecha DATE, IN fecha_f DATE, IN hi TIME, IN hf TIME,IN a INT)
	BEGIN
    SELECT * FROM prestamo_ambientes WHERE (
        (
            
            fecha BETWEEN fecha_prestamo AND fecha_devolucion OR
            fecha_f BETWEEN fecha_prestamo AND fecha_devolucion OR
            fecha_prestamo BETWEEN fecha AND fecha_f)
        AND(
            hi BETWEEN hora_ingreso AND hora_salida OR
            hf BETWEEN hora_ingreso AND hora_salida OR
            hora_ingreso BETWEEN hi AND hf)
        ) AND
        a=`no`;
        END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE disponibilidad(IN fecha DATE, IN hora TIME)
	BEGIN
    SELECT * FROM prestamo_ambientes WHERE 
    fecha BETWEEN fecha_prestamo AND fecha_devolucion AND
    hora BETWEEN hora_ingreso AND hora_salida;
    END //
DELIMITER ;






