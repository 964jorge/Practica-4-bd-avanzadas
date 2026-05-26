--Para la replica logica
CREATE USER miguelito WITH REPLICATION PASSWORD '1234';

GRANT ALL PRIVILEGES ON DATABASE postgres TO miguelito;