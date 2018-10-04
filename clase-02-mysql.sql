/*SELECT * FROM movies WHERE awards > 6; 
SELECT title, awards, rating FROM movies_db.movies WHERE awards >6 AND rating >8;

unicamente con LIKE
% busca ese texto dentro de un registro
_ _ _ guión bajo busca un solo carácter por posición

fecha siempre como string
where relase_date like ‘2018-%-%’ ‘%-2018-%’ ‘_ _ _ _ - 07-%’

SELECT * FROM movies
WHERE year(realase_year) = '2008'
*/
# Consultas Where:

# Obtener las películas (movies) hechas entre Octubre 1999 y Diciembre 2004, 
# que muestre las películas más nuevas de primero. (usar release_date)

SELECT * FROM movies
WHERE release_date > '1999-09-30' AND release_date < '2005-01-01'
ORDER BY release_date ASC;

# Obtener las películas (movies) que tengan duración entre 45 minutos y 2 horas y media, 
# ordenarlo por esta columna. (usar length)

SELECT * FROM movies
WHERE length >= 45 AND length <= 150
ORDER BY length DESC;

#Obtener los actores (actors) que el nombre empiece con ‘HE’ hasta los que empiezan con ‘TO’,
# ordenarlas como desees. (usar first_name)

SELECT * FROM actors
WHERE first_name >= 'He%' AND first_name <= 'To%'
ORDER BY rating ASC;

#Obtener las películas (movies) que empiezan con la letra ‘T’, ordenarlas como desees. (usar title)

SELECT * FROM movies
WHERE title LIKE 'T%'
ORDER BY title ASC;

# Obtener las películas (movies) que empiezan con la letra ‘T’ y terminen con la letra ‘C’, 
# Ordenarlas como desees. (usar title)

SELECT * FROM movies
WHERE title LIKE 'T%' AND title LIKE '%C'
ORDER BY title ASC;

# Obtener las películas (movies) hechas en el año 2000, ordenarlos por nombre de la película.
# (usar release_date y title)

SELECT * FROM movies
WHERE release_date LIKE '2000-%'
ORDER BY title ASC;

# Obtener las películas (movies) que en el título contenga un guión “-”,
# ordenarlas como desees. (usar title)

SELECT * FROM movies
WHERE title LIKE '%-%'
ORDER BY rating ASC;

# Obtener las películas (movies) hechas en el mes de Octubre o en el año 1999, 
# ordenar que el año sea el primer ordenamiento y el título de mayor a menor. 
# (usar release_date y title)

SELECT * FROM movies
WHERE release_date LIKE '%-10-%' OR release_date LIKE '1999-%'
ORDER BY title ASC;

# Obtener los actores (actors) que de nombre tengan: inicie con ‘J’ con cuatro letras de comodín
# y finalicen con ‘Y’, ordenarlas como desees (usar first_name)

SELECT * FROM actors
WHERE first_name LIKE 'J____y'
ORDER BY last_name ASC;

# Obtener los actores (actors) cuyos nombres terminen en ‘AM’, ordenarlos por el  apellido 
# y por el nombre de menor a mayor (usar first_name y last_name).

SELECT * FROM actors
WHERE first_name LIKE '%am'
ORDER BY last_name ASC;

# Obtener las películas (movies) que contengan en su título la letra ‘Y’ como conjunción 
# y además contenga ‘LA’, ordenarlas como desees (usar title).

SELECT * FROM movies
WHERE title LIKE '% y %' AND title LIKE '%la%'
ORDER BY title ASC;

# Obtener los actores (actors) que contengan en el apellido ‘de’ ó ‘ll’ y en el nombre ‘a’,
# ordenarlas como desees (usar first_name y last_name).

# Obtener las películas (movies) que sean de la saga de ‘Toy Story’ o  y las películas 
# de la saga de ‘Harry Potter’ con duración de 2 horas, ordenarlas por nombre ascendente 
# y luego por duración en descendente (usar title y length).

# Obtener todas las películas (movies) que tengan de rating ‘8.3’, ‘9.1’ y ‘9.0’, ordenarlas como desees (usar rating).

# Obtener todas las películas (movies) que tengan 2, 5 o 7 premios, ordenarlas de manera que muestre los que tengan mayores premios primero (usar awards).

# Obtener todas las películas (movies) que sí tengan duración, mostrar primero las que tengan menor duración (usar length).

# Obtener las películas (movies) que no sean del mes de Julio, ordenarlas como desees (usar release_date).

# Obtener los actores (actors) que en el apellido no contengan la letra K, ordenarlas como desees (usar last_name).

# Obtener las películas (movies) que no tengan duración de 2 y 2 horas y media, muestren en orden ascendente los títulos. (usar length y title)


# Alias de Campos y Tablas

# Retornar de la tabla películas (movies) los valores de la columna title como ‘Titulo de la Pelicula’, ordenarlas como desees.

# Obtener los campos ‘id’ como ‘id_genero’, ‘name’ como ‘nombre_genero’  de la tabla generos (genres), ordenarlo por nombre_genero de menor a mayor.

# Retornar el texto ‘Actor: ’ delante del campo ‘first_name’ de la tabla actors, ordenarlo por ese campo.
 
/*Puedes usar el operador de concatenación || (doble pipe), 
  para que mysql las pueda usar debes colocar antes de tu sentencia:
		set sql_mode=PIPES_AS_CONCAT;
  Pongámonos a pensar qué más podemos hacer en alias. */


# Combinaciones - Table Reference

# Retornar las películas (movies) y sus géneros (genres), 
# ordenando por nombre de película. (usar title)

# Obtener las películas (movies) con sus actores (actors), 
# ordenar por nombre de pelicula y nombre de los actores. (usar title y first_name)

# Obtener los actores (actors) y las películas (movies) a las que pertenecieron. 
# (usar first_name, last_name y title)

# JOINS

# Retornar las películas (movies) y sus géneros (genres), ordenando por nombre de película 
# utilizando joins (usar title).

# Obtener las películas (movies) con sus actores (actors), ordenar por nombre de pelicula
# y nombre de los actores utilizando joins (usar title y first_name).

# Obtener los actores (actors) y las películas (movies) a los que pertenecieron 
# utilizando joins (usar first_name, last_name y title).

# Retornar los géneros (genres) ordenados de mayor a menor por su nombre, 
# con referencia a las películas (movies) utilizando joins (usar name y title).

# Obtener las películas (movies) con sus géneros (genres) y los actores (actors)
# que participen en cada una de ellas utilizando joins (usar title, name, first_name y last_name).

# Analiza cuales Join puedes utilizar.

#Obtener las películas (movies) y el género (genres) si lo posee, ordenar por nombre de película de menor a mayor (usar title).

#Puedes ordenar primero por nombre de género (name) y luego por nombre de película (title),
# verás como se muestra el listado.


#Obtener los actores (actors) y las películas (movies) en las que participaron, 
# ordenar por nombre de actor (usar first_name y title).


#Intenta el ordenamiento por nombre de pelicula (title) y verás como se muestra el listado.


#Obtener las películas (movies) con sus géneros (genres) si los posee 
# y los géneros con todas las películas películas que le corresponden, 
# ambas en una sola consulta, sin ordenamiento (usar title y name).
