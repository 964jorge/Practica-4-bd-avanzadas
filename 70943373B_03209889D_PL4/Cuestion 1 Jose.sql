DROP USER MAPPING FOR postgres SERVER maestro2_fdw;
DROP SERVER maestro2_fdw;

--CREATE EXTENSION postgres_fdw;

CREATE SERVER maestro2_fdw
FOREIGN DATA WRAPPER postgres_fdw
OPTIONS (
   host '192.168.1.136',
   dbname 'MUSICOS2',
   port '5432'
);


CREATE USER MAPPING FOR postgres
SERVER maestro2_fdw
OPTIONS (

    user 'postgres',
    password '1234'

    );


DROP TABLE IF EXISTS Entradas CASCADE;

DROP TABLE IF EXISTS Grupos_Tocan_Conciertos CASCADE;

DROP TABLE IF EXISTS Conciertos CASCADE;

DROP TABLE IF EXISTS Canciones CASCADE;

DROP TABLE IF EXISTS Discos CASCADE;

DROP TABLE IF EXISTS Musicos CASCADE;

DROP TABLE IF EXISTS Grupo CASCADE;

--Creacion de tablas

--Grupo
CREATE TABLE Grupo (
    Codigo_grupo INTEGER PRIMARY KEY,
    Nombre TEXT,
    Genero_musical TEXT,
    Pais TEXT,
    Sitio_web TEXT
);


--Discos
CREATE TABLE Discos (
    Codigo_disco INTEGER PRIMARY KEY,
    Titulo TEXT,
    Fecha_edicion DATE,
    Genero TEXT,
    Formato TEXT,
    Codigo_grupo_Grupo INTEGER,
    CONSTRAINT Grupo_fk FOREIGN KEY (Codigo_grupo_Grupo)
        REFERENCES Grupo(Codigo_grupo)
        ON DELETE RESTRICT ON UPDATE RESTRICT
);


--Canciones
CREATE TABLE Canciones (
    Codigo_cancion INTEGER PRIMARY KEY,
    Nombre TEXT,
    Compositor TEXT,
    Fecha_grabacion DATE,
    Duracion INTEGER, -- en segundos
    Codigo_disco_Discos INTEGER,
    CONSTRAINT Discos_fk FOREIGN KEY (Codigo_disco_Discos)
        REFERENCES Discos(Codigo_disco)
        ON DELETE RESTRICT ON UPDATE RESTRICT
);



--Importacion de tablas

IMPORT FOREIGN SCHEMA public
FROM SERVER maestro2_fdw
INTO public;