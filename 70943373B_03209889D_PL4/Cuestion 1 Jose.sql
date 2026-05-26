CREATE EXTENSION postgres_fdw;

CREATE SERVER maestro2_fdw
FOREIGN DATA WRAPPER postgres_fdw
OPTIONS (
   host '192.168.1.136',
   dbname 'MUSICOS2',
   port '5432'
);