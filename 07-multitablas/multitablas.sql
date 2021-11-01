-- Joins --
-- COnsular información de dos tablas --
SELECT * FROM actor, film_text;

-- Consular información de dos tablas --
SELECT * FROM actor, film_actor;

SELECT COUNT(actor.actor_id) FROM actor, film_actor;

SELECT city_id, city, country FROM city INNER JOIN country ON city.country_id = country.country_id;

/* film_id, first_name, last_name, title */
-- SELECT title, description FROM film WHERE film_id IN(SELECT film_id FROM film_actor WHERE actor_id = 4) --


-- Intento 1: El Caso más sencillo --
SELECT film.film_id, first_name, last_name FROM film 
INNER JOIN film_actor ON film.film_id = film_actor.film_id
WHERE film_actor.actor_id = 3;
-- Intento 2: El Caso más sencillo --

SELECT film.film_id, first_name, last_name, title FROM film  
INNER JOIN film_actor ON film.film_id = film_actor.film_id 
INNER JOIN actor WHERE film_actor.actor_id = actor.actor_id;

-- Carlos --
SELECT film_id, first_name, last_name, title FROM film 
INNER JOIN actor ON actor_id = 5
WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 5);

SELECT film_id, first_name, last_name, title FROM film 
INNER JOIN actor ON first_name = "Julia" AND last_name = "MCQUEEN"
WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 5);

SELECT film.film_id, actor.first_name, actor.last_name, title 
FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON actor.actor_id = film_actor.actor_id 
ORDER BY actor.first_name ASC;
