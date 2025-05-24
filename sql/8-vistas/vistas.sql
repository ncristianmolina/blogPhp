/*
 Vistas:
Las podemos definir como una consulta almacenada en la base de datos que 
se utiliza como una tabla virtual.
No almacena datos sino que utiliza asociaciones y los datos originales
de las tablas, de forma que siempre se mantiene actualizada.
 */

CREATE VIEW entradas_con_nombres AS
SELECT e.id, e.titulo, u.nombre AS 'Autor', c.nombre AS 'Categoría'
FROM entradas e
INNER JOIN usuarios u ON e.usuario_id = u.id
INNER JOIN categorias c ON e.categoria_id = c.id;

/*DESPUES PUEDO CONSULTARLE Y TRATARLA COMO TABLA
POR EJEMPLO..
show tables
drop view entradas_con_nombres
SELECT * FROM entradas_con_nombres WHERE Autor = 'Adrian'
*/