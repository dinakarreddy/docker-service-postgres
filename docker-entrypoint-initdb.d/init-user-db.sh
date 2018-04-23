#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER user1 WITH PASSWORD 'pass1';
    CREATE DATABASE db1;
    GRANT ALL PRIVILEGES ON DATABASE db1 TO user1;
    CREATE USER user2 WITH PASSWORD 'pass2';
    CREATE DATABASE db2;
    GRANT ALL PRIVILEGES ON DATABASE db2 TO user2;
EOSQL
