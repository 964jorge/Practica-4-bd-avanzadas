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