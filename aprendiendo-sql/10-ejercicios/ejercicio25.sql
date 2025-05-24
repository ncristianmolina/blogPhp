/* 
25. Obtener una lista de los nombres de los clientes con el importe
de sus encargos acumulado
 */

SELECT c.nombre, SUM(co.precio*e.cantidad) AS "IMPORTE" 
FROM clientes c 
INNER JOIN encargos e ON c.id = e.cliente_id
INNER JOIN coches co ON co.id = e.coche_id
GROUP BY c.nombre
ORDER BY 2 ASC;