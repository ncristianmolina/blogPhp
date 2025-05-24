#MOSTRAR TODOS LOS REGISTROS / FILAS DE UNA TABLA#
SELECT email, nombre, apellidos FROM usuarios;

#MOSTRAR TODOS LOS CAMPOS#
SELECT * FROM usuarios;

#OPERADORES ARITMETICOS#
SELECT email, (7+7) AS 'OPERACION' FROM usuarios;/*ME VA MOSTRAR LA COLUMNA EMAIL CON LOS MAILS Y UNA COLUMNA OPERACION CON LA SUMA Q ES 14*/
SELECT id, email, (id+7) AS 'OPERACION' FROM usuarios;/*ME VA MOSTRAR LA COLUMNA id y email con sus datos Y UNA COLUMNA OPERACION CON LA SUMA del id  + 7*/

#FUNCIONES MATEMATICAS#
SELECT CEIL(7.34) AS 'OPERACION' FROM usuarios;/*CEIL(7.34) me redondea el numero para arriba, floor(7.34) me redondea para abajo rand() saca numero aleatorio
pi() saca el pi round(7.98,1) me saca 7.9 truncate me saca decimales*/

#FUNCIONES PARA CARACTERES#
SELECT UPPER(nombre) AS "NOMBRES" FROM usuarios;/*ME SACA LOS NOMBRES EN MAYUSCULA lower en minuscula*/
SELECT CONCAT(nombre, ' ' , apellidos) as 'concateno' FROM usuarios;/*me muestra el nombre y los apellidos en una columna llamada concateno*/
SELECT UPPER(CONCAT(nombre, ' ' , apellidos)) as 'concateno' FROM usuarios;/*funcion dentro de otra funcion*/
SELECT LENGTH(CONCAT(nombre, ' ' , apellidos)) as 'EL NUMERO DE CARACTERES' FROM usuarios;/*EL NUMERO DE CARACTERES CUENTA ESPACIOS TAMBIEN*/
SELECT TRIM(CONCAT('    ', nombre, ' ', apellidos, '    ')) as 'QUITO ESPACIOS' FROM usuarios;/*TRIM ME BORRA LOS ESPACIOS DE LA DERECHA Y DE LA IZQUIERDA*/
SELECT email, fecha, CURDATE() AS 'FECHA ACTUAL' FROM usuarios;/*ME SACA LA FECHA*/
SELECT email,fecha, DATEDIFF(CURDATE(),fecha ) AS 'DIFERENCIA DE DIAS' FROM usuarios;/*ME SACA LA DIFERENCIA DE DIAS*/
SELECT email, DAYNAME(fecha) AS 'FECHA ACTUAL' FROM usuarios;/*ME SACA EL DIA DE LA FECHA EN LETRAS MATES MIERCOLES ETC..*/
SELECT email, DAYOFMONTH(fecha) AS 'FECHA ACTUAL' FROM usuarios;/*ME SACA EL DIA DE LA FECHA EN NUMERO ETC..*/
SELECT email, CURTIME() AS 'HORA ACTUAL' FROM usuarios;/*ME SACA LA HORA ACTUAL*/
SELECT email, SYSDATE() AS 'FECHA ACTUAL HORA ACTUAL' FROM usuarios;/*ME SACA LA FECHA Y HORA ACTUAL*/
SELECT email,fecha, DATE_FORMAT(fecha, '%d,%m,%Y') AS 'FECHA ACTUAL formato latino' FROM usuarios;/*LE CAMBIO EL FORMATO DE LA FECHA DE INGLES A ESPAÑOL*/
SELECT email, STRCMP('HOLA', 'HOLIALA') FROM usuarios;/*ME DICE SI ES DIFERENTE LOS HOLAS SI SALE 0 ES FALSE OTRO NUMERO ES TRUE*/
SELECT DISTINCT USER() FROM usuarios;/*ME MUESTRA EL USUARIO DE PHPMYADMI*/
SELECT DISTINCT DATABASE() FROM usuarios;/*ME MUESTRA LA BASE DE DATOS Q ESTOY USANDO*/
/*Distinct hace que la consulta omita los resultados de la consulta duplicados*/