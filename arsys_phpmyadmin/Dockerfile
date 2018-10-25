FROM phpmyadmin/phpmyadmin:4.7.7-1

MAINTAINER cbreton <cbreton@arsys.es>
#Set TimeZone Madrid

ENV TZ=Europe/Madrid

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone