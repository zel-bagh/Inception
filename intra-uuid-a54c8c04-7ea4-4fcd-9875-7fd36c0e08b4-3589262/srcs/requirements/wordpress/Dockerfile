FROM   debian:buster
RUN apt -y  update
RUN mkdir -p /var/www/html
RUN apt install -y php-fpm php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip
RUN apt install vim wget mariadb-client php-mysql -y
RUN wget https://wordpress.org/latest.tar.gz \
    && tar -xzvf latest.tar.gz \
    &&rm latest.tar.gz
COPY conf/www.conf  /etc/php/7.3/fpm/pool.d/
COPY conf/php-fpm.conf /etc/php/7.3/fpm/
COPY conf/wp-config.php /wordpress
COPY tools/start.sh /
CMD ["sh", "start.sh"]
