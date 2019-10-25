#!/bin/bash 

DIR="/usr/local/kafka"
if [ -d "$DIR" ]; then
### Take action if $DIR exists ###
	echo "Installing config files in ${DIR}..."

else
###  Control will jump here if $DIR does NOT exists ###
	echo "Error: ${DIR} not found. Can not continue."
		#Kafka letöltése
	wget http://www-us.apache.org/dist/kafka/2.2.1/kafka_2.12-2.2.1.tgz

	#Kicsomagolás és másolás
	tar xzf kafka_2.12-2.2.1.tgz
	mv kafka_2.12-2.2.1 /usr/local/kafka
	exit 1
fi

#Zookeeper indítása
cd /usr/local/kafka
sudo bin/zookeeper-server-start.sh config/zookeeper.properties

#Kafka indítása
sudo bin/kafka-server-start.sh config/server.properties

#Docker init
docker ps

#Időjárásadatok letöltése
cd /mnt/D834B3AF34B38ECE/DEV/bkk-data-crawler
gradle bootRun 

#Útadatok letöltése
cd /mnt/D834B3AF34B38ECE/DEV/bkk-route-crawker
gradle bootRun

