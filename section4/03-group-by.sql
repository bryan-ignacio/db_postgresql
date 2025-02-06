-- para contar el numero de registro que hay en nuestra tabla.
SELECT
	COUNT(*) AS total_users,
	-- cual es el minimo de seguidores que alguien tiene. el valor minimo de seguidores es 4.
	MIN(followers) AS min_followers,
	-- cual es el maximo de seguidores que alguien tiene. el valor maximo de seguidores es 4999
	MAX(followers) AS max_followers,
	-- cuel es el promedio de followers.
	AVG(followers) AS promedio_followers,
	SUM(followers) / COUNT(*) AS promedio_manual_followers
FROM
	users;

SELECT
	first_name,
	last_name,
	followers
FROM
	users
WHERE
	followers = 4
	OR followers = 4999;

-- muestra la suma de todos los registros donde los followers son igual a 4.
SELECT
	COUNT(*)
FROM
	users
WHERE
	followers = 4;

-- muestra la suma de todos los registros donde los followers sean igual a 4999.
SELECT
	COUNT(*)
FROM
	users
WHERE
	followers = 4999;
-- cuando tenemos una funcion de agregacion ya sea count(), max(), mi(), avg() y un campo que es una columna de la bd
-- no funcionara directamente.
-- si se quiere separar por cuantos tiene cada uno.
-- hay 7 registros que tienen 4 followers.
-- hay 5 registros que tienen 5 followers.
SELECT
	count(*),
	followers
FROM
	users
WHERE
	followers = 4
	OR followers = 4999
	-- agrupamos por los followers
GROUP BY
	followers
	-- ordenamos por los followers.
ORDER BY
	followers DESC;


SELECT
	COUNT(*),
	followers
FROM
	users
WHERE
	followers BETWEEN 4500 AND 4999
GROUP BY
	-- se agrupan por esta columna.
	followers
ORDER BY
	followers DESC;