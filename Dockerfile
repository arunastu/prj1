FROM ubuntu

LABEL maintainer "Aruna"

RUN apt-get update \

  && apt-get install -y apache2 \

  && DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata \

  && apt-get install -y libapache2-mod-php php-mysql

EXPOSE 80

RUN echo "This is my server" > /var/www/html/index.html \

  && echo "<?php phpinfo(); ?>" > /var/www/html/info.html

COPY testdb.php /var/www/html/prj1

CMD apachectl -D FOREGROUND
