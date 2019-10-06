#!/bin/bash 

cd /usr/local/kafka/bin
./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic bkk

# Kafka topicok listázása
./kafka-topics.sh --list --zookeeper localhost:2181

# Console Consumer indítása
./kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic bkk --from-beginning

# Console Producer indítása
./kafka-console-producer.sh --broker-list localhost:9092 --topic bkk