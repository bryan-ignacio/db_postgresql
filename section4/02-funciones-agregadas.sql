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

