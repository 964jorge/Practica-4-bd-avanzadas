--Crear publicacion:
CREATE PUBLICATION pub_grupos
FOR ALL TABLES;

--Crear subscripcion:
CREATE SUBSCRIPTION sub_grupos
CONNECTION 'host=192.168.50.140 port=5432 dbname=postgres user=postgres password=Jose83471'
PUBLICATION pub_grupos;