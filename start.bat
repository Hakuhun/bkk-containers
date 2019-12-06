@ECHO off

D:
cd D:\DEV\bkk-containers

:: MySQL indítás
cd bkk-initial-route-database
docker build -t bkk/mysql .
docker-compose up -d

cd D:\DEV\bkk-containers\bkk-weather-redis
docker-compose up -d 

cd D:\DEV\bkk-containers\bkk-backup-mongo
docker-compose up -d 

cd D:\DEV\bkk-containers\bkk-kafka
docker-compose up -d 