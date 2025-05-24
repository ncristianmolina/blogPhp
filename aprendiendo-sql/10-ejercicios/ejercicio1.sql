/* 
1. Diseñar y crear la base de datos de un concesionario.
 */

CREATE DATABASE IF NOT EXISTS concesionario;
USE concesionario;

CREATE TABLE coches(
id       int(10) auto_increment not null,
modelo   varchar(100) not null,
marca    varchar(50),
precio   int(20) not null,
stock    int(255) not null,
fecha       date,
CONSTRAINT pk_coches PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE grupos(
id       int(10) auto_increment not null,
nombre   varchar(100) not null,
ciudad   varchar(100),
fecha       date,
CONSTRAINT pk_grupos PRIMARY KEY(id)
)ENGINE=InnoDB;

CREATE TABLE vendedores(
id          int(10) auto_increment not null,  
grupo_id    int(10) not null,
jefe        int(10),
nombre      varchar(100) not null,
apellidos   varchar(150),
cargo       varchar(50),
sueldo      float(20,2),
comision    float(10,2),
fecha       date,
CONSTRAINT pk_vendedores PRIMARY KEY(id),
CONSTRAINT fk_vendedor_grupo FOREIGN KEY(grupo_id) REFERENCES grupos(id),
CONSTRAINT fk_vendedor_jefe FOREIGN KEY(jefe) REFERENCES vendedores(id)
)ENGINE=InnoDB;

CREATE TABLE clientes(
id              int(10) auto_increment not null,  
vendedor_id     int(10),  
nombre          varchar(150) not null,
ciudad          varchar(100),
gastado         float(50,2),
fecha           date,
CONSTRAINT pk_clientes PRIMARY KEY(id),
CONSTRAINT fk_cliente_vendedor FOREIGN KEY(vendedor_id) REFERENCES vendedores(id)
)ENGINE=InnoDB;

CREATE TABLE encargos(
id            int(10) auto_increment not null,   
cliente_id    int(10) not null,  
coche_id      int(10) not null,  
cantidad      int(100),  
fecha         date,
CONSTRAINT pk_encargos PRIMARY KEY(id),
CONSTRAINT fk_encargo_cliente FOREIGN KEY(cliente_id) REFERENCES clientes(id),
CONSTRAINT fk_encargo_coche FOREIGN KEY(coche_id) REFERENCES coches(id)
)ENGINE=InnoDB;

#RELLENAR LA BASE DE DATOS CON INFORMACIÓN - INSERTS#

#COCHES
INSERT INTO coches VALUES(NULL, 'Renault Clio', 'Renault', 12000, 13,CURDATE());
INSERT INTO coches VALUES(NULL, 'Onix', 'Chevrolet', 10000, 10,CURDATE());
INSERT INTO coches VALUES(NULL, 'Mercedes Ranchera', 'Mercedes Benz', 32000, 24,CURDATE());
INSERT INTO coches VALUES(NULL, 'Porche Cayene', 'Porche', 65000, 5,CURDATE());
INSERT INTO coches VALUES(NULL, 'Lambo Aventador', 'Lamborgini', 170000, 2,CURDATE());
INSERT INTO coches VALUES(NULL, 'Ferrari Spider', 'Ferrari', 245000, 80,CURDATE());

#GRUPOS
INSERT INTO grupos VALUES(NULL, 'Vendedores A', 'Buenos Aires',CURDATE());
INSERT INTO grupos VALUES(NULL, 'Vendedores B', 'Buenos Aires',CURDATE());
INSERT INTO grupos VALUES(NULL, 'Directores mecanicos', 'Buenos Aires',CURDATE());
INSERT INTO grupos VALUES(NULL, 'Vendedores A', 'Mar del Plata',CURDATE());
INSERT INTO grupos VALUES(NULL, 'Vendedores B', 'Mar del Plata',CURDATE());
INSERT INTO grupos VALUES(NULL, 'Vendedores C', 'Cordoba',CURDATE());
INSERT INTO grupos VALUES(NULL, 'Vendedores A', 'Tandil',CURDATE());
INSERT INTO grupos VALUES(NULL, 'Vendedores B', 'Ushuaia',CURDATE());
INSERT INTO grupos VALUES(NULL, 'Vendedores C', 'Bariloche',CURDATE());

#VENDEDORES
INSERT INTO vendedores VALUES(NULL, 1, NULL, 'Pamela', 'David', 'Reponsable de tienda', 30000, 4, CURDATE());
INSERT INTO vendedores VALUES(NULL, 1, 1, 'Sol', 'Perez', 'Ayudante en tienda', 23000, 2, CURDATE());
INSERT INTO vendedores VALUES(NULL, 2, NULL, 'Nelson', 'Sánchez', 'Reponsable de tienda', 38000, 5, CURDATE());
INSERT INTO vendedores VALUES(NULL, 2, 3, 'Sofia', 'Salomo', 'Ayudante en tienda', 12000, 6, CURDATE());
INSERT INTO vendedores VALUES(NULL, 3, NULL, 'Karina', 'Jelinek', 'Mecanico jefe', 50000, 2, CURDATE());
INSERT INTO vendedores VALUES(NULL, 4, NULL, 'Antonio', 'Lopez', 'Vendedor de recambios', 13000, 8, CURDATE());
INSERT INTO vendedores VALUES(NULL, 5, NULL, 'Mail', 'Shiranui', 'Vendedor experto', 60000, 2, CURDATE());
INSERT INTO vendedores VALUES(NULL, 6, NULL, 'Joaquin', 'Lopez', 'Ejecutivo de cuentas', 80000, 1, CURDATE());
INSERT INTO vendedores VALUES(NULL, 6, 8, 'Luis', 'Lopez', 'Ayudante en tienda', 10000, 10, CURDATE());

#CLIENTES
INSERT INTO clientes VALUES(NULL, 1, 'Construcciones Carlos Inc', 'Formosa', 24000, CURDATE());
INSERT INTO clientes VALUES(NULL, 1, 'Verduleria Marta Inc', 'Santa Cruz', 40000, CURDATE());
INSERT INTO clientes VALUES(NULL, 1, 'Instituto Marcos Inc', 'Mar del Plata', 32000, CURDATE());
INSERT INTO clientes VALUES(NULL, 1, 'Daniela Inmobiliaria Inc', 'Mercedez', 96000, CURDATE());
INSERT INTO clientes VALUES(NULL, 1, 'Discoteca Esperanto Inc', 'Buenos Aires', 170000, CURDATE());
INSERT INTO clientes VALUES(NULL, 1, 'Tienda Tecnologica Inc', 'Ushuaia', 245000, CURDATE());

#ENCARGOS
INSERT INTO encargos VALUES(NULL, 1, 1, 2, CURDATE());
INSERT INTO encargos VALUES(NULL, 2, 2, 4, CURDATE());
INSERT INTO encargos VALUES(NULL, 3, 3, 1, CURDATE());
INSERT INTO encargos VALUES(NULL, 4, 3, 3, CURDATE());
INSERT INTO encargos VALUES(NULL, 5, 5, 1, CURDATE());
INSERT INTO encargos VALUES(NULL, 6, 6, 1, CURDATE());


/*
id            int(10) auto_increment not null,   
cliente_id    int(10) not null,  
coche_id      int(10) not null,  
cantidad      int(100),  
fecha         date,
*/