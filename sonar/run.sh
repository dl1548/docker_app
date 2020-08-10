#!/bin/bash

docker stop exec_pgsql
docker rm exec_pgsql
docker run \
  -d \
  --name exec_pgsql \
  -p 5432:5432 \
  -e POSTGRES_USER=sonar \
  -e POSTGRES_PASSWORD=sonar \
  postgres:9.6.18


docker stop exec_sonarqube
docker rm exec_sonarqube
docker run \
  -d \
  --name exec_sonarqube \
  -p 9000:9000 \
  -e SONARQUBE_JDBC_URL=jdbc:postgresql://exec_pgsql ip /sonar \
  -e SONARQUBE_JDBC_USERNAME=sonar \
  -e SONARQUBE_JDBC_PASSWORD=sonar \
  -v $PWD/sonarqube_conf:/opt/sonarqube/conf \
  -v $PWD/sonarqube_extensions:/opt/sonarqube/extensions \
  -v $PWD/sonarqube_logs:/opt/sonarqube/logs \
  -v $PWD/sonarqube_data:/opt/sonarqube/data \
  sonarqube:7.9.4-community