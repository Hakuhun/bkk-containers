cd C:\DEV\hadoop\bkk-containers\bkk-initial-route-database

docker build -t bkk/mysql .

docker rename gifted_keller bkk_mysql

docker run bkk_mysql