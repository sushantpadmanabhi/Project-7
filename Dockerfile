FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

COPY index.html /var/www/html/
COPY style.css /var/www/html/

EXPOSE 80

CMD ["apachectl","-D","FOREGROUND"]