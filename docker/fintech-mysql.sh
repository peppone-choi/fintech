#!/bin/bash

docker network create docker_fintech

docker run -d -P \
--name fintech-mysql \
-e MYSQL_ROOT_PASSWORD="fintech" \
-e MYSQL_USER="fintech" \
-e MYSQL_PASSWORD="fintech" \
-e MYSQL_DATABASE="fintech" \
--network docker_fintech mysql:latest