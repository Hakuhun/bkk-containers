#!/bin/bash 

DIR="/usr/local/kafka"
echo "Error: ${DIR} not found. Can not continue."

#Kafka letöltése
wget http://www-us.apache.org/dist/kafka/2.2.1/kafka_2.12-2.2.1.tgz

#Kicsomagolás és másolás
tar xzf kafka_2.12-2.2.1.tgz
mv kafka_2.12-2.2.1 /usr/local/kafka