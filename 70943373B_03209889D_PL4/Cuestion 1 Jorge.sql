DROP USER MAPPING FOR postgres SERVER maestro1_fdw;
DROP SERVER maestro1_fdw;

--CREATE EXTENSION postgres_fdw;

CREATE SERVER maestro1_fdw
FOREIGN DATA WRAPPER postgres_fdw
OPTIONS (
   host '192.168.50.140',
   dbname 'MUSICOS1',
   port '5432'
);

CREATE USER MAPPING FOR postgres
SERVER maestro1_fdw
OPTIONS (

    user 'postgres',
    password 'Jose83471'

    );


