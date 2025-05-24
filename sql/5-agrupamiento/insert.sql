#INSERTS PARA CATEGORIAS#
INSERT INTO categorias VALUES(null, 'Acción');
INSERT INTO categorias VALUES(null, 'Pelea');
INSERT INTO categorias VALUES(null, 'Deportes');

#INSERTS PARA ENTRADAS#
INSERT INTO entradas VALUES(null, 2, 1, 'Novedades de GTA 6 Online', 'Review del GTA 6', CURDATE());/*1 ID DEL USUARIO Y 1 ID DE LA CATEGORIA*/
INSERT INTO entradas VALUES(null, 2, 2, 'REVIEW de Naruto juego', 'Todo sobre el Juego-Naruto', CURDATE());
INSERT INTO entradas VALUES(null, 2, 3, 'Nuevos jugadores de Fifa 2023', 'Review del Fifa 23', CURDATE());

INSERT INTO entradas VALUES(null, 3, 1, 'Novedades de Assasins Online', 'Review del Assasins', CURDATE());
INSERT INTO entradas VALUES(null, 3, 2, 'REVIEW de street fighter', 'Todo sobre el street fighter', CURDATE());
INSERT INTO entradas VALUES(null, 3, 3, 'Nuevos jugadores de PES 2023', 'Review del Pro 23', CURDATE());

INSERT INTO entradas VALUES(null, 4, 1, 'Novedades de Call Of Duty Online', 'Review del COD', CURDATE());
INSERT INTO entradas VALUES(null, 4, 2, 'REVIEW de Mortal Kombat Online', 'Todo sobre el Mortal-Kombat', CURDATE());
INSERT INTO entradas VALUES(null, 4, 1, 'Nuevos jugadores de PlantasVSsombis', 'Review de PlantasVSsombis', CURDATE());
