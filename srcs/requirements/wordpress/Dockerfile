FROM   debian:buster
RUN apt -y  update

RUN mkdir -p /var/www/html

RUN apt install -y php-fpm php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip
RUN apt install vim wget mariadb-client php-mysql -y
RUN chmod -R 755 /var/www/html/
COPY www.conf  /etc/php/7.3/fpm/pool.d/
COPY php-fpm.conf /etc/php/7.3/fpm/
CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
