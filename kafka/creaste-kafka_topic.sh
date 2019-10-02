#!/bin/bash 

cd /usr/hdp/current/kafka-broker/bin
./kafka-topics.sh --create --zookeeper sandbox-hdp.hortonworks.com:2181 --replication-factor 1 --partitions 1 --topic bkk
