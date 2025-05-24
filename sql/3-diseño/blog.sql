CREATE TABLE usuarios(
id          int(255) auto_increment not null, /*auto_increment que se vaya incrementando cuando se creo un nuevo usuario*/
nombre      varchar(100) not null,
apellidos   varchar(100) not null,
email       varchar(255) not null,
password    varchar(255) not null,
fecha       date not null,/*Solo con feca xx/xx/xxxx*/
CONSTRAINT pk_usuarios PRIMARY KEY(id), /*Asi ahcemos que el ID sea una clave primaria como pusimos en nuestro diagrama*/
CONSTRAINT uq_email UNIQUE(email) /*Asi hacemos que le mail del usuario no pueda ser repetido con el de otro ya creado*/
)ENGINE=InnoDb; /*InnoDb ayuda al motor que sea mas eficiente, inserte registros mas rapidos, etc. Le indicamos el motor de almacenar a MYSQL*/

CREATE TABLE categorias(
id      int(255) auto_increment not null,
nombre  varchar(100),
CONSTRAINT pk_categorias PRIMARY KEY(id) /*La clave primaria de Categoria*/
)ENGINE=InnoDb;

CREATE TABLE entradas(
id              int(255) auto_increment not null,
usuario_id      int(255) not null,
categoria_id    int(255) not null,
titulo          varchar(255) not null,
descripcion     MEDIUMTEXT, 
fecha           date not null,
CONSTRAINT pk_entradas PRIMARY KEY(id), /*La clave primaria de Entradas*/
CONSTRAINT fk_entradas_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id),/*f de foranea y k de key, de la tabla entrada. Y le decimos que hace referencia esta llave foranea a la tabla Usuarios*/
CONSTRAINT fk_entradas_categoria FOREIGN KEY(categoria_id) REFERENCES categorias(id) ON DELETE NO ACTION /*lo mismo que arriba, pero con la tabla Categoria.*/ /*El on delete no action es que si se elimina un id foraneo tambien se va a eliminar el ID que hace relacion con esta funcion*/
)ENGINE=InnoDb;




/*CREATE TABLE usuarios(
id          int(255) auto_increment not null,
nombre      varchar(100) not null,
apellidos   varchar(100) not null,
email       varchar(255) not null,
password    varchar(255) not null,
fecha       date not null,
CONSTRAINT pk_usuarios PRIMARY KEY(id),
CONSTRAINT uq_email UNIQUE(email)
)ENGINE=InnoDb;

CREATE TABLE categorias(
id      int(255) auto_increment not null,
nombre  varchar(100),
CONSTRAINT pk_categorias PRIMARY KEY(id)
)ENGINE=InnoDb;

CREATE TABLE entradas(
id              int(255) auto_increment not null,
usuario_id      int(255) not null,
categoria_id    int(255) not null,
titulo          varchar(255) not null,
descripcion     MEDIUMTEXT, 
fecha           date not null,
CONSTRAINT pk_entradas PRIMARY KEY(id),
CONSTRAINT fk_entradas_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id),
CONSTRAINT fk_entradas_categoria FOREIGN KEY(categoria_id) REFERENCES categorias(id) ON DELETE NO ACTION
)ENGINE=InnoDb;*/