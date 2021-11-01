-- SUbconsultas --
-- Filtrar peliculas que sean de una categoría --
-- from referencia el nombre de la tabla--
-- IN para hacer subconsultas --
SELECT * from film WHERE film_id IN(1, 2 ,3);
-- Filtrar películas que sean de una categoria --
SELECT * FROM film WHERE film_id IN(SELECT film_id FROM film_category WHERE category_id = 11);

-- between --
SELECT * FROM film  WHERE film_id BETWEEN 1 AND 10;


-- Paso 1 --
SELECT * FROM film WHERE film_id = 1 OR film_id = 2 OR film_id = 3;
-- Paso 2 --
SELECT * FROM film WHERE film_id IN (100, 7, 33);
-- Paso 3 --
SELECT film_id FROM film_category WHERE category_id = 11;

-- FILM ACTOR --

-- Filtrar peliculas por actores --
SELECT first_name, last_name FROM actor WHERE actor_id = 1;
SELECT * FROM actor WHERE first_name = "Jason";
SELECT title, description FROM film WHERE film_id IN(SELECT film_id FROM film_actor WHERE actor_id = 4);