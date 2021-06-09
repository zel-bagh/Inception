FROM debian:buster
ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD
ENV DB_NAME=${DB_NAME}
ENV DB_USER=${DB_USER}
ENV DB_PASSWORD=${DB_PASSWORD}
RUN apt update
RUN apt install -y mariadb-server ufw
COPY mariadb-server.cnf etc/mysql/mariadb.conf.d/
RUN  ufw allow 3306
COPY mariadb.sh /
COPY wpdb.sql /
RUN sh mariadb.sh
RUN mkdir koko
WORKDIR koko
RUN mkdir SOSO
CMD mysqld --console