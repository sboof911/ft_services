FROM 	alpine:latest

WORKDIR /home

COPY 	srcs/default.conf 	.
COPY	srcs/setup.sh 		.
#nginx installation
RUN		apk update
RUN		apk add openrc nginx
RUN		openrc reboot
RUN		rc-update add nginx default
#RUN		rc-service nginx start
RUN		mv /home/default.conf /etc/nginx/conf.d/
RUN		adduser -S -g 'Nginx www user' -h /home/www/ sboof
#RUN		/etc/init.d/nginx start
#wordpress installation
RUN		apk add php7-fpm php7-mcrypt php7-soap php7-session php-mbstring php7-openssl php7-gmp php7-pdo_odbc php7-json php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype
RUN		cd /home/www
RUN		wget http://wordpress.org/latest.tar.gz
RUN		tar -xzvf latest.tar.gz
RUN		rm latest.tar.gz
RUN		mv wordpress/* /home/www/
RUN		rm -rf wordpress
RUN		mkdir tmp
RUN		chmod 777 tmp

EXPOSE 	5050

CMD	sh		/home/setup.sh
