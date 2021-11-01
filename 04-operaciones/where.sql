/*
OPERADORES DE COMPARACION:
Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like
*/


/*
OPERADORES LOGICOS:
O       OR
Y       AND
NO      NOT
*/


/*
COMODINES:
Cualquier cantidad de caracteres: %
Un caracter desconocido: _
*/



/* Seleccionar por id */
SELECT * FROM  tabla WHERE id = 5;

/* Seleccionar por id mayor a un numero */
SELECT * FROM actor WHERE actor_id > 63;

/* Seleccionar campos */
SELECT * FROM actor_id, first_name, last_name  WHERE actor_id > 63;


/* Seleccionar id's par */
SELECT * FROM actor WHERE actor_id % 2 = 0;

/* Seleccionar id's impar */
SELECT * FROM actor WHERE actor_id % 2 != 0;

/* Operador AND */
SELECT * FROM actor WHERE first_name = "CHRIS" AND actor_id > 50;

/* Comodines: todos los actores primer cuyo primer nombre termina con a */
SELECT * FROM actor WHERE first_name LIKE "%a";
/* Comodines: todos los actores primer cuyo primer nombre empiece con a */
SELECT * FROM actor WHERE first_name LIKE "a%";
/* Comodines: todos los actores primer cuyo primer nombre contenga una u */
SELECT * FROM actor WHERE first_name LIKE "%u%";
SELECT * FROM actor WHERE first_name LIKE "%u%" OR last_name LIKE "e%";
/* Comodines: todos los actores primer cuyo primer nombre contenga an o empiece con e  */
SELECT * FROM actor WHERE first_name LIKE "%an%" OR last_name LIKE "e%";
