# CONSULTAS AGRUPAMIENTO siempre van a llevar el COUNT para q tenga sentido#
SELECT COUNT(titulo) AS 'NÚMERO DE ENTRADAS', categoria_id FROM entradas GROUP BY categoria_id;/*CUENTA LAS FILAS DE TITULO de la tabla entradas
// y agrupa o sea las junta los q tengan la misma categoria_id de esas filas y luego las muestra */

# CONSULTAS AGRUPAMIENTO CON CONDICIONES#
SELECT COUNT(titulo) AS 'NÚMERO DE ENTRADAS', categoria_id
FROM entradas GROUP BY categoria_id HAVING COUNT(titulo) >= 4;/*HAVING ES UN WHERE SOLO Q SE USA CON AGRUPAMIENTOS*/

/*
FUNCIONES AGRUPAMIENTO:
AVG     Sacar la media
COUNT   Contar el numero de elementos
MAX     Valor maximo del grupo
MIN     Valor minimo del grupo
SUM     Sumar todo el contenido del grupo
*/

SELECT AVG(id) AS 'Media de entradas' FROM entradas;/*SACA LA MEDIA DE LOS ID */
SELECT MAX(id) AS 'MAXIMO ID', titulo FROM entradas;/*ME SACA DEL MAXIMO ID ESE ID Y EL TITULO*/
SELECT SUM(id) AS 'SUMA DE ID', titulo FROM entradas;/*ME SUMA LOS ID Y MUESTRA LA SUMA Y EL TITULO PRIMERO PORQE SE QEDA CON ESE EN ESTE CASO*/
