FROM 	alpine:3.12

WORKDIR /home

COPY 	srcs/default.conf 	    .
COPY	srcs/setup.sh 		    .
COPY    srcs/wp-config.php      .
COPY    srcs/telegraf.conf      /home/
COPY    srcs/supervisord.conf   /etc/
#nginx installation
RUN		apk update && apk add --no-cache supervisor
RUN		apk add openrc nginx
RUN		openrc reboot
RUN		rc-update add nginx default
RUN		mv /home/default.conf /etc/nginx/conf.d/
RUN		adduser -S -g 'Nginx www user' -h /home/www/ sboof
#wordpress installation
RUN		apk add php7-fpm php7-mcrypt php7-soap php7-session php-mbstring php7-openssl php7-gmp php7-pdo_odbc php7-json php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype
RUN     mkdir /run/nginx
RUN		cd /home/www
RUN		wget http://wordpress.org/latest.tar.gz
RUN		tar -xzvf latest.tar.gz
RUN		rm latest.tar.gz
RUN		mv wordpress/* /home/www/
RUN		rm -rf wordpress
RUN		mkdir tmp
RUN		chmod 777 tmp
RUN     cp wp-config.php /home/www/
#setup telegraf
RUN         wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.2_linux_amd64.tar.gz
RUN         tar xf telegraf-1.16.2_linux_amd64.tar.gz

EXPOSE 	5050

CMD         /usr/bin/supervisord -c /etc/supervisord.conf
