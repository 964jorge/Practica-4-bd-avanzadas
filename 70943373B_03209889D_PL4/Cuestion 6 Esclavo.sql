--Ejemplo 2:
SELECT * FROM pg_subscription; --no ejecuta pq esta detenido
--recuperacion realizada:
SELECT * FROM pg_subscription;
SELECT pg_is_in_recovery();


--Ejemplo 3:
--recuperacion realizada:
SELECT * FROM Grupo WHERE codigo_grupo = 666;