FROM debian:buster
ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD
ARG MYSQL_ROOT_PASS
ENV DB_NAME=${DB_NAME}
ENV DB_USER=${DB_USER}
ENV DB_PASSWORD=${DB_PASSWORD}
ENV MYSQL_ROOT_PASS=${MYSQL_ROOT_PASS}
RUN apt update
RUN apt install -y mariadb-server
COPY conf/50-server.cnf etc/mysql/mariadb.conf.d/
COPY tools/mariadb.sh /
COPY tools/start.sh /
COPY tools/wpdb.sql /
RUN sh mariadb.sh
ENTRYPOINT ["sh", "start.sh"]