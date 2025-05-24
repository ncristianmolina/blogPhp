/*Lenguaje de Manipulación de Datos (Data Manipulation Language, DML)
 es un lenguaje proporcionado por los sistemas gestores de bases de
  datos que permite a los usuarios de la misma llevar a cabo las tareas
   de consulta o modificación de los datos contenidos en las
    Bases de Datos del Sistema Gestor de Bases de Datos*/

#INSERTAR NUEVOS REGISTROS#

INSERT INTO usuarios VALUES(null, 'Adrian', 'Lisciotti', 'adrian@adrian.com', '1234', '2019-05-01');/*va en orden segun los nombres de las columnar, la primera es id que es autoincremental por eso va null*/
INSERT INTO usuarios VALUES(null, 'Leo', 'Messi', 'leo@gmail.com', '1234', '2019-08-05');
INSERT INTO usuarios VALUES(null, 'Sol', 'Perez', 'sol@gmail.com', '1234', '2020-05-01');


#INSERTAR FILAS SOLO CON CIERTAS COLUMNAS#
INSERT INTO usuarios(email, password) VALUES('admin@admin.com', 'admin'); 

/*Son dos maneras distintas de ingresar datos, preferible la primera asi completas todo, si son pocos datos de un largo formulario a completar podes optar por la 2da.*/