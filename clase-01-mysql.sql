-- Practica clase SQL

-- 1. Obtengan todos los datos de la tabla movies (la base de datos se puede explicitar junto a la tabla mediante nombreDB.nombreTabla o bien se establece en el nombre de la tabla
SELECT * 
FROM movies;

-- 2. Obtengan todos los datos de la tabla actors
SELECT * 
FROM .actors;

-- 3. Obtenga únicamente el título (usar title) de todas las películas (movies)
SELECT title 
FROM movies;

-- 4. Obtenga únicamente nombre y apellido de los actores (usar first_name y last_name de la tabla actors)
SELECT first_name, last_name 
FROM actors;

/* 5. Obtenga todas las películas (movies) que se realizaron luego del año 2000 (usar release_date)
BETWEEN	Between an inclusive range
LIKE			Search for a pattern
IN				To specify multiple possible values for a column*/
SELECT * 
FROM movies 
WHERE release_date > '2010-01-01'; -- AND length IS NOT NULL;

-- 6. Obtenga todas las películas (movies) hechas entre el año 2000 y el año 2010 (usar release_date)
SELECT * 
FROM movies 
WHERE release_date >= '2000-01-01' AND release_date <= '2010-12-31';

-- 7. Obtener únicamente la pelicula (movies) “Toy Story”
SELECT * 
FROM movies 
WHERE title LIKE 'Toy Story';

-- 8. Obtener todos los actores (actors) que se llamen “Mark” (usar first_name)
SELECT * 
FROM actors 
WHERE first_name = 'Mark'; -- first_name LIKE 'Mark'; first_name LIKE 'Mar%';

-- 9. Obtener todos los actores (actors) que no se llamen “Mark”
SELECT * 
FROM actors 
WHERE first_name <> 'Mark';

-- 10. Obtener todos los actores (actors) que se llamen “Mark” o “Sam”
SELECT * 
FROM actors 
WHERE first_name LIKE 'Mark' or first_name LIKE 'Sam'; -- IN ('Mark', 'Sam');

/* 11. Obtener todas las películas (movies) que hayan sido hechas previo al año 2000 o posterior al año 2009 
 y además tengan id mayor a 10 (usar release_date e id)*/
SELECT *  
FROM movies 
WHERE (release_date < '2000-01-01' AND release_date > '2019-01-01') AND id > 10;

-- 12. Obtener todos los actores (actors) ordenados alfabéticamente por nombre (usar first_name).
SELECT *
FROM actors
ORDER BY first_name ASC;

/* 13. Obtener todos los actores (actors) ordenados alfabéticamente por nombre y 
en segundo lugar por su apellido (usar fisrt_name y last_name). */
SELECT *
FROM actors
ORDER BY first_name ASC, last_name ASC;

-- 14. Obtener todas las películas (movies) ordenadas por la fecha de estreno, desde la mas antigua a la mas reciente. (usar release_date).
SELECT *
FROM movies
ORDER BY release_date ASC;

-- 15. Obtener aquellas películas (movies) hechas en el siglo XXI ordenadas por título (usar release_date y title).
SELECT *
FROM  movies
WHERE release_date >= '2000-01-01'
ORDER BY title ASC;

-- 16. Obtener únicamente 5 películas (movies).
SELECT * 
FROM movies
LIMIT 5;

-- 17. Obtener únicamente 3 películas (movies) hechas en el siglo XXI (usar release_date).
SELECT * 
FROM movies
WHERE release_date >= '2000-01-01'
LIMIT 3;

-- 18. Obtener únicamente 3 películas (movies) hechas en el siglo XXI ordenadas por título (usar release_date y title).
SELECT *
FROM  movies
WHERE release_date >= '2000-01-01'
ORDER BY title ASC
LIMIT 3; -- 50 PERCENT;

-- 19. Obtener el primer actor (actors) de la tabla.
SELECT MIN(id) AS first_actor
FROM actors;

-- 20. Obtener la última película (movies) de la tabla.
SELECT MAX(id) AS lastest_movie
FROM movies;

/* 21. The SELECT statement is used to select data from a database. 
 The data returned is stored in a result table, called the result-set.*/
SELECT *  -- title, length
FROM movies;

-- 22. The SELECT DISTINCT statement is used to return only distinct (different) values.
SELECT DISTINCT *
FROM movies;

/* 23. The WHERE clause is used to filter records. 
The WHERE clause is used to extract only those records that fulfill a specified condition.*/
SELECT * 
FROM movies 
WHERE awards > 6;

/* 24. The ORDER BY is used to sort the result-set in ascending ASC or descending DESC order 
(SQL sorts the records in ascending order by default). */
SELECT title, awards, rating 
FROM movies 
WHERE awards > 4 AND rating > 8
ORDER BY rating DESC, awards ASC;

-- The following SQL statement finds the shortest movie:
SELECT MIN(length) AS shortest_movie
FROM movies;

-- The following SQL statement finds the newest movie:
SELECT MAX(release_date) AS newest_movie
FROM movies;

