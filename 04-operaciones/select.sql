/* Seleccionar datos */
SELECT * FROM usuarios;
SELECT id, direccion FROM usuarios;
/* El orden en que lo ejecute, es el orden que devuelve */

/* Para resetear el incrementador */
ALTER TABLE `blog`.`usuarios` 
AUTO_INCREMENT = 1 ;
