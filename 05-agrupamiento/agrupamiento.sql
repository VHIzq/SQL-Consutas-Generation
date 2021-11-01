-- Count --
SELECT rental_duration, COUNT(film_id) AS "Total"  FROM film WHERE rental_duration = 7;
-- Group --
SELECT rental_duration, COUNT(film_id) AS "Total"  FROM film GROUP BY rental_duration ORDER BY total DESC;
-- Group --
SELECT rental_duration, COUNT(film_id) AS "Total"  FROM film GROUP BY rental_duration ORDER BY rental_id ASC;

-- Promedio del replacement cost --
SELECT AVG(replacement_cost) AS "Costo promedio" FROM film;

-- Suma --
SELECT SUM(replacement_cost) AS "Costo total de inventario" FROM film;
-- El asterisco hace referencia a todos los campos --
-- Maximo valor --
  SELECT MAX(replacement_cost) AS  "max_replacement" FROM film;

SELECT * FROM film ORDER BY replacement_cost DESC LIMIT 1;

-- Mínimo valor --
SELECT *, MIN(replacement_cost) FROM film;

