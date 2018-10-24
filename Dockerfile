FROM ubuntu:18.10
MAINTAINER cbreton@arsys.es

RUN apt-get update
RUN apt-get install nginx -y

RUN echo '<marquee>Hello Arsys!!!</marquee>' \
    > /var/www/html/index.html
RUN useradd cbreton
RUN apt-get update
RUN apt-get install nginx -y

EXPOSE 80

ENV DATABASE_IP 192.168.2.9

RUN usermod -aG root cbreton
USER cbreton
#ENTRYPOINT ["nginx","-g daemon off;"]
