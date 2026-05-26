--Crear publicacion:
CREATE PUBLICATION pub_grupos
FOR ALL TABLES;

--Comprobaciones:
SELECT * FROM pg_publication;


--Sentencia de insert:
INSERT INTO Grupo VALUES (5,'Neta ´n the Yahus', 'Ska religioso', 'Israhell', 'BigYahu.is');