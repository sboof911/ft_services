FROM 		alpine:3.8

WORKDIR 	/home
COPY		srcs/setup.sh	    /home/
COPY		srcs/data.sh	    /home/
COPY        srcs/config-sql.sh  /home
RUN			apk update
RUN			apk add mariadb mariadb-client openrc
RUN			openrc reboot
RUN			mysql_install_db --user=mysql --datadir=/var/lib/mysql
RUN			/etc/init.d/mariadb setup
RUN			/etc/init.d/mariadb start
RUN         rc-update add mariadb default
EXPOSE 		3306

CMD 		sh config-sql.sh
