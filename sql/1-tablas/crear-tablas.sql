/*
CREAR TABLA
*/

CREATE TABLE usuarios(
id          int(11) not null,
nombre      varchar(100) not null,
apellido    varchar(255) default 'apellido_X',
edad        varchar(100) not null,
pais        varchar(255) not null
);