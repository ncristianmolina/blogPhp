# RENOMBRAR UNA TABLA #
ALTER TABLE usuarios RENAME TO usuarios_renom;

/*# CAMBIAR NOMBRE DE UNA COLUMNA #
ALTER TABLE usuarios_renom CHANGE apellidos apellido varchar(100) null;*/

# MODIFICAR COLUMNA SIN CAMBIAR NOMBRE #
/*ALTER TABLE usuarios_renom MODIFY apellido char(40) not null;*/

# AÑADIR COLUMNA #
/*ALTER TABLE usuarios_renom ADD website varchar(100) null;*/

# AÑADIR RESTRICCIÓN A COLUMNA #
/*ALTER TABLE usuarios_renom ADD CONSTRAINT uq_email UNIQUE(email);/*CONSTRAINT una restriccion mas avanzada*/

# BORRAR UNA COLUMNA #
/*ALTER TABLE usuarios_renom DROP website;*/

# RESTABLESE EL AUTO_INCREMENT DE UNA TABLA EN ESTE CASO A 1
/*ALTER TABLE users AUTO_INCREMENT = 1;*/