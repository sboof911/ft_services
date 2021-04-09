FROM 		alpine:latest

WORKDIR 	/home
COPY		srcs/setup.sh	/home/
RUN			apk update
RUN			apk add mysql mysql-client openrc
RUN			openrc reboot
RUN			mysql_install_db --user=mysql --datadir=/var/lib/mysql
#RUN			/etc/init.d/mariadb start
#RUN			mysql -u root -e "CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';"
#RUN			mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;"

EXPOSE 		3306

CMD 		sh		setup.sh
