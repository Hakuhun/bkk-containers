FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE routes

ENV MYSQL_USER spring
ENV MYSQL_PASSWORD spring

ADD setup.sql /docker-entrypoint-initdb.d
EXPOSE 3306