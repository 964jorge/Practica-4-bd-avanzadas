INSERT INTO Grupo VALUES
(1,'Queen','Rock','UK','queen.com'),
(2,'Coldplay','Pop Rock','UK','coldplay.com'),
(3,'Muse','Rock','UK','muse.mu');

INSERT INTO Discos VALUES
(1,'A Night at the Opera','1975-11-21','Rock','Vinilo',1),
(2,'Parachutes','2000-07-10','Pop', 'CD',2),
(3,'Absolution','2003-09-15','Rock','CD',3);

INSERT INTO Canciones VALUES
(1,'Bohemian Rhapsody','Queen','1975-10-31',355,1),
(2,'Love of My Life','Queen','1975-11-21',220,1),
(3,'Yellow','Coldplay','2000-06-26',260,2),
(4,'Fix You','Coldplay','2005-09-05',300,2),
(5,'Time is Running Out','Muse','2003-08-18',230,3);


--Conculta en si:
SELECT
    g.Codigo_grupo,
    g.Nombre,
    COUNT(DISTINCT c.Codigo_cancion) AS total_canciones,
    COUNT(DISTINCT gc.Codigo_concierto_Conciertos) AS total_conciertos
FROM Grupo g
LEFT JOIN Discos d
       ON d.Codigo_grupo_Grupo = g.Codigo_grupo
LEFT JOIN Canciones c
       ON c.Codigo_disco_Discos = d.Codigo_disco
LEFT JOIN Grupos_Tocan_Conciertos gc
       ON gc.Codigo_grupo_Grupo = g.Codigo_grupo
GROUP BY g.Codigo_grupo, g.Nombre
ORDER BY g.Nombre;


--Plan de ejecucion:
EXPLAIN VERBOSE
SELECT
    g.Codigo_grupo,
    g.Nombre,
    COUNT(DISTINCT c.Codigo_cancion),
    COUNT(DISTINCT gc.Codigo_concierto_Conciertos)
FROM Grupo g
LEFT JOIN Discos d
       ON d.Codigo_grupo_Grupo = g.Codigo_grupo
LEFT JOIN Canciones c
       ON c.Codigo_disco_Discos = d.Codigo_disco
LEFT JOIN Grupos_Tocan_Conciertos gc
       ON gc.Codigo_grupo_Grupo = g.Codigo_grupo
GROUP BY g.Codigo_grupo, g.Nombre;