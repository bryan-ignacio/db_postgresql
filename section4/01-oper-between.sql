-- seleccionamos columnas y en estas queremos solo los registro que cumpla la condicion y esten ordenados descendentemente.
SELECT
	first_name,
	last_name,
	followers
FROM
	users
WHERE
	-- 	followers > 4600 AND followers < 4700 con between no excluye el primero.
	followers BETWEEN 4600 AND 4700
ORDER BY
	followers DESC;
