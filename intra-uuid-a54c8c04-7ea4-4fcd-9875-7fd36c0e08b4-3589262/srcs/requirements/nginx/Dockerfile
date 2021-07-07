FROM debian:buster
RUN apt update
ARG CERTS
ENV CERTS=${CERTS}
RUN apt -y install vim curl
COPY conf/default /
COPY tools/certificate/nginx-selfsigned.crt ${CERTS} 
COPY tools/certificate/nginx-selfsigned.key ${CERTS}
COPY tools/start.sh /
CMD sh start.sh