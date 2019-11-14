#!/bin/bash 

docker pull combustml/mleap-spring-boot:0.16.0-SNAPSHOT

mkdir /tmp/models
#docker run -p 8080:8080 -v /mnt/D834B3AF34B38ECE/DEV/bkk-containers/bkk-mleap-api/model:/models combustml/mleap-spring-boot:0.16.0-SNAPSHOT
docker run -p 8080:8080 -v /tmp/models:/models combustml/mleap-spring-boot:0.16.0-SNAPSHOT