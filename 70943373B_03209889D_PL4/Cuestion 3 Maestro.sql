SELECT inet_server_port();

--Deberia dar false:
SELECT pg_is_in_recovery();

--Ver si esclavo esta conectado:
SELECT * FROM pg_stat_replication;