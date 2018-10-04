# Ejercicios  - Clase 03 (MySQL)

# Agregación de datos

#Traer todos los géneros (genres) y la cantidad de películas 
# (movies) del mismo (usar name y title).

SELECT genre_id
FROM movies
GROUP BY genre_id;
#COUNT(genre_id)

# De cada género, obtener el rating (rating) más bajo de las películas (movies) 
# (usar name de la tabla genres).

SELECT (*);

# Obtener el rating (rating) más alto de las películas (movies) por género 
# (usar name de la tabla genres).

# Obtener el promedio de ratings (rating) de películas (movies) por género
# (usar name de la tabla genres).

# Obtener los títulos (title) de las series (series) y la cantidad de temporadas 
# (usar number de la tabla seasons).

# Obtener por cada temporada (seasons), el título de la serie (title) y 
# la cantidad de capítulos (usar number de la tabla episodes).

# Obtener por cada capítulo (episodes), el número de temporada (seasons), 
# el nombre de la serie (series), el género (genres) y la cantidad de actores
# (actors) que tiene.

# Obtener todos los géneros (genres) y la cantidad de películas (movies) que 
# tengan rating (rating) mayor a 5.

# Traer todos los géneros (genres) y el promedio de rating (rating) de sus 
# películas (movies). Considerar solamente las películas con rating mayor a 5.

# Traer todas las series (series) y su cantidad de capítulos (episodes).

# Traer todas las series (series) y la cantidad de capítulos (episodes) 
# que se emitieron en el 2016 (usar release_date).

# Traer todas las series (series) y la cantidad de capítulos (episodes) 
# que se emitieron en el año actual (usar release_date).

# Subqueries

# Traer todos los actores (actors) cuya película favorita contenga la letra t 
# (usar favorite_movie_id). NO NECESITA SUBQUERY

# Traer todos los actores (actors) y las películas (movies) en las que actúan 
# siempre y cuando la película favorita del actor contenga la letra t 
# (usar favorite_movie_id de la tabla actors).

# Traer todos los géneros (genres) que tengan series (series) que hayan estrenado 
# en el 2013 o posterior (usar release_date).

# Exists

# Traer las películas (movies) que no sean películas preferidas 
# (usar favorite_movie_id de la tabla actors).

# Traer los géneros (genres) que estén en series (series) y en películas (movies).

# Traer los géneros (genres) que no tengan series.