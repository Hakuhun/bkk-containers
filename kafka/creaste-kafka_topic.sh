#!/bin/bash 

cd /usr/hdp/current/kafka-broker/bin
./kafka-topics.sh --create --zookeeper sandbox-hdp.hortonworks.com:2181 --replication-factor 1 --partitions 1 --topic bkk

# Kafka topicok listázása
./kafka-topics.sh --list --zookeeper sandbox-hdp.hortonworks.com:2181

# Console Consumer indítása
./kafka-console-consumer.sh --zookeeper sandbox-hdp.hortonworks.com:2181 --bootstrap-server localhost:9092 --topic bkk --from-beginning