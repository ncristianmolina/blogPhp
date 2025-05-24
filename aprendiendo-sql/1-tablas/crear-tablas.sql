/*
TIPOS DE DATOS:

int(nº cifras)                  ENTERO
integer(nº cifras)              ENTERO  (maximo 4294967295)
varchar(nº caracteres)          STRING / ALFANUMERICO (maximo 255)
char(nº caracteres)             STRING / ALFANUMERICO
float(nº cifras, nº decimales)  DECIMAL / COMA FLOTANTE
date, time, timestamp

// STRING MAS GRANDES
TEXT 65535 caracteres
MEDIUMTEXT  16 millones
LONGTEXT    4 billones de caracteres

// ENTEROS MAS GRANDE
MEDIUMINT
BIGINT
*/

/*
CREAR TABLA
*/
CREATE TABLE usuarios(
id          int(11) not null,
nombre      varchar(100) not null,
apellidos   varchar(255) not null default 'apellido_X',
email       varchar(100) not null,
password    varchar(255) not null
);

