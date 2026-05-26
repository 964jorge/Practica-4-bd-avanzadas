SELECT inet_server_port();

--Deberia dar true:
SELECT pg_is_in_recovery();

--Comprobacion de esclavo solo lectura:
SELECT * FROM Grupo WHERE codigo_grupo = 4;