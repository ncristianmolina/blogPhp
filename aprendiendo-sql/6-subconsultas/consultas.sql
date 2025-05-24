/* 
SUBCONSULTAS:
- Son consultas que se ejecutan dentro de otras.
- Consiste en uutilizar los resultados de la subconsulta para operar en la 
  consulta principal.
- Jugando con las claves ajenas / foraneas.
 */

#Sacar usuarios con entradas (IN ..si el id existe en la subconsulta me sacaria esos)#
SELECT * FROM usuarios WHERE id IN (SELECT usuario_id FROM entradas);/*se usa IN cuando me va devolver muchos campos si no uso = */

#Sacar los usuarios que tengan alguna entrada que en su titulo hable de GTA#
SELECT nombre, apellidos FROM usuarios WHERE id 
    IN (SELECT usuario_id FROM entradas WHERE titulo LIKE "%GTA%");

#Sacar todas las entradas de la categoria acción utilizando su nombre#
SELECT categoria_id, titulo FROM entradas WHERE categoria_id IN (SELECT id FROM categorias WHERE nombre = 'Accion');

#Mostrar las categorias con 3 o más entradas .. GROUP BY las agrupa por categoria#
SELECT * FROM categorias WHERE 
    id IN (SELECT categoria_id FROM entradas GROUP BY categoria_id HAVING COUNT(categoria_id)>=3);

#Mostrar los usuarios que crearon una entrada un martes#
SELECT * FROM usuarios WHERE id IN 
       (SELECT usuario_id FROM entradas WHERE DAYOFWEEK(fecha)=3);


#Mostrar el nombre del usuario que tenga mas entradas#
SELECT CONCAT(nombre,' ',apellidos) AS 'Elusuarioconmasentradas' FROM usuarios WHERE id =
    (SELECT usuario_id FROM entradas GROUP BY usuario_id ORDER BY COUNT(id) DESC);


#Mostrar las categorias sin entradas (aca le digo q me muestre las categorias q no tengan el id de la subconsulta , el id_categoria)#
SELECT * FROM categorias WHERE id 
        NOT IN (SELECT categoria_id FROM entradas);


