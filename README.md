# docker-service-postgres
deploying postgres using docker

# Prerequisites
need to have docker, docker-compose installed


# Start and Stop
make postgres-up for starting postgres

Listen to port 15432 for postgres service

make postgres-down for stopping postgres


# Data Location
A new directory volumes will be created where the db data is persisted


# How to run commands on startup
Two new databases will be created by default on startup. To change what commands need to be run on startup change docker-entrypoint-initdb.d/init-user-db.sh
