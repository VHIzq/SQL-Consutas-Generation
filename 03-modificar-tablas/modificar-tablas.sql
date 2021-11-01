/* Renombrarla */
ALTER TABLE usuarios RENAME TO users;

/* Cambiaar nombre columna */
ALTER TABLE usuarios CHANGE direccion dir VARCHAR(50);

/* Agregar columnas */
ALTER TABLE usuarios ADD edad INT NOT NULL;

/* Borrar columna */
ALTER TABLE usuarios DROP edad;