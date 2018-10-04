# Ejercicios  - Clase 04 (MySQL)

# Ejercitación DML

# Insertar 5 películas (movies) a la tabla aclarando todos sus campos.
INSERT INTO movies (created_at, updated_at, title, rating, awards, release_date, length, genre_id)
VALUES
(NULL, NULL, 'Pelicula 1', 4.5,4, '2018-10-05', 125, NULL),
(NULL, NULL, 'Pelicula 2', 5.5,4, '2018-10-05', 115, NULL),
(NULL, NULL, 'Pelicula 3', 6.5,6, '2018-10-05', 105, NULL),
(NULL, NULL, 'Pelicula 4', 7.5,7, '2018-10-05', 95, NULL),
(NULL, NULL, 'Pelicula 5', 8.5,8, '2018-10-05', 85, NULL);

SELECT *
FROM movies
ORDER BY release_date DESC;

# Insertar 5 registros a la tabla películas (movies) sin aclarar el valor del campo awards. ¿Qué sucede? ¿Por qué?


# Insertar 5 actores (actors) aclarando todos sus campos.


# Insertar 5 actores (actors) sin aclarar el rating.


# Insertar 5 actores (actors) sin aclarar el campo last_name. ¿Qué sucede? ¿Por qué?


# A través de consultas insert relacionar al menos uno de los actores (actors) recién insertados con una de las películas (movies) recién insertadas.


# Modificar todas las películas (movies) para que el campo awards pase a valor NULL.


# Modificar todas las películas (movies) que hayan salido en el 2008 para que tengan 2 premios (usar release_date y awards).


# Modificar todas las películas (movies) que tengan null en el campo awards para que pasen a tener 0 premios.


# Borrar la última película insertada (tabla movies).


# Intentemos borrar una película (movies) que tenga actores asociados. ¿Qué sucede?


# Realizar las consultas necesarias para poder efectivamente borrar una película que tenga actores asociados.


# Insertar 10 géneros (genres) variando su ranking entre 1 y 10.


# Modificar todos los géneros (genres) para que estén inactivos.


# Modificar aquellos géneros (genres) cuyo ranking sea entre 1 y 5 para que estén activos.


# Borrar los géneros (genres) inactivos.


# Borrar las películas (movies) cuyo rating sea menor a 1.
