/* 
13. Mostrar la media de sueldos entre todos los vendedores , 
el nombre y ciudad del grupo
 */

 
SELECT CEIL(AVG(v.sueldo)) AS 'MEDIA SALARIAL', g.nombre, g.ciudad FROM vendedores v
INNER JOIN grupos g ON g.id = v.grupo_id
GROUP BY grupo_id;
 