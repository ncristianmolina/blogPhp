#INSERTAR NUEVOS REGISTROS#
INSERT INTO usuarios VALUES(null, 'Adrian', 'Lisciotti', 'adrian@adrian.com', '1234', '2019-05-01');
INSERT INTO usuarios VALUES(null, 'Leo', 'Messi', 'leo@gmail.com', '1234', '2019-08-05');
INSERT INTO usuarios VALUES(null, 'Sol', 'Perez', 'sol@gmail.com', '1234', '2020-05-01');


#INSERTAR FILAS SOLO CON CIERTAS COLUMNAS#
INSERT INTO usuarios(email, password) VALUES('admin@admin.com', 'admin'); 