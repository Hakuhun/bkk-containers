#!/bin/bash 

#Zookeeper indítása
cd /usr/local/kafka
sudo bin/zookeeper-server-start.sh config/zookeeper.properties

#Kafka indítása
sudo bin/kafka-server-start.sh config/server.properties

#Docker init
docker ps

#Időjárás mikroszolgáltatás
cd /mnt/D834B3AF34B38ECE/DEV/bkk-data-crawler
gradle bootRun

#Útinfó mikroszolgáltatás
cd /mnt/D834B3AF34B38ECE/DEV/bkk-route-crawker
gradle bootRun

#Összegző szolgáltatás
cd /mnt/D834B3AF34B38ECE/DEV/bkk-data-api
gradle bootRun

#feldolgozó szolgáltatás
cd /mnt/D834B3AF34B38ECE/DEV/bkk-data-process-spark
sbt run

#web API 
cd /mnt/D834B3AF34B38ECE/DEV/bkk-web
gradle bootRun