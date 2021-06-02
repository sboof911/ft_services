FROM 	alpine:3.12

WORKDIR /home

COPY 	srcs/default.conf 	    .
COPY	srcs/setup.sh 		    .
COPY    srcs/config.inc.php     .
COPY    srcs/telegraf.conf      /home/
COPY    srcs/supervisord.conf   /etc/
#nginx installation
RUN 	apk update && apk add --no-cache supervisor
RUN 	apk add openrc nginx
RUN 	openrc reboot
RUN		rc-update add nginx default
RUN 	mv /home/default.conf /etc/nginx/conf.d/
RUN 	adduser -S -g 'Nginx www user' -h /home/www/ sboof
RUN		#/etc/init.d/nginx restart
#phpmyadmin installation
RUN 	apk add php7-fpm php7-mcrypt php7-soap php7-session php-mbstring php7-openssl php7-gmp php7-pdo_odbc php7-json php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype
RUN 	cd /home/www
RUN     mkdir /run/nginx
RUN 	wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
RUN 	tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
RUN 	rm phpMyAdmin-5.0.2-all-languages.tar.gz
RUN 	mv phpMyAdmin-5.0.2-all-languages/* /home/www/
RUN 	rm -rf phpMyAdmin-5.0.2-all-languages
RUN 	mkdir tmp
RUN 	chmod 777 tmp
RUN     mkdir -p /var/run/php
RUN     cp config.inc.php /home/www/
RUN     mkdir /home/www/tmp && chmod 777 /home/www/tmp
#setup telegraf
RUN         wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.2_linux_amd64.tar.gz
RUN         tar xf telegraf-1.16.2_linux_amd64.tar.gz

EXPOSE 	5000

CMD         /usr/bin/supervisord -c /etc/supervisord.conf
