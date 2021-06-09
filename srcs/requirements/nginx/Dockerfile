FROM debian:buster
RUN apt update
RUN apt -y install nginx vim curl
COPY default /etc/nginx/sites-available/
COPY nginx-selfsigned.crt /etc/nginx/ssl/certs/nginx-selfsigned.crt
COPY nginx-selfsigned.key /etc/nginx/ssl/private/nginx-selfsigned.key
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN  chmod 700 /etc/ssl/private
CMD service nginx start
