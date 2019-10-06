
#Kafka letöltése
wget http://www-us.apache.org/dist/kafka/2.2.1/kafka_2.12-2.2.1.tgz

#Kicsomagolás és másolás
tar xzf kafka_2.12-2.2.1.tgz
mv kafka_2.12-2.2.1 /usr/local/kafka

#Zookeeper indítása
cd /usr/local/kafka
bin/zookeeper-server-start.sh config/zookeeper.properties

#Kafka indítása
bin/kafka-server-start.sh config/server.properties

