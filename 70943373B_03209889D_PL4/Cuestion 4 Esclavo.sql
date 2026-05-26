--Ejemplo 2:
--recuperacion realizada:
SELECT pg_is_in_recovery();


--Ejemplo 3:
SELECT * FROM grupo;
--Se reinicia el maestro
SELECT * FROM Grupo WHERE codigo_grupo = 3000;