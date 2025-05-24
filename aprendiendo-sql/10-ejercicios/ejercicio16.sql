/* 
16. Obtener listado de clientes atendidos por el vendedor 'Nelson Sanchez'
 */

SELECT * FROM clientes WHERE vendedor_id IN 
(SELECT id FROM vendedores WHERE nombre = 'Nelson' AND apellidos = 'Sanchez');
