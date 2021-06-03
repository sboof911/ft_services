FROM 		alpine:3.12

WORKDIR 	/home


RUN         apk update && apk add mariadb mariadb-common mariadb-client openrc libc6-compat && apk add --no-cache supervisor && openrc reboot
COPY        srcs/mariadb-server.cnf /etc/my.cnf.d/
COPY        srcs/wordpress.sql      /home/
COPY        srcs/phpmyadmin.sql     /home/
COPY        srcs/config-sql.sh      /home/
COPY        srcs/telegraf.conf      /home/
COPY        srcs/supervisord.conf   /etc/
RUN         chmod +x /home/config-sql.sh
#setup telegraf
RUN         wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.2_linux_amd64.tar.gz
RUN         tar xf telegraf-1.16.2_linux_amd64.tar.gz

EXPOSE 		3306

CMD 		sh config-sql.sh
