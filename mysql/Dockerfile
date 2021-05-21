FROM 		alpine:latest

WORKDIR 	/home
COPY		srcs/setup.sh	/home/
COPY		srcs/data.sh	/home/
RUN			apk update
RUN			apk add mariadb mariadb-client openrc
RUN			openrc reboot
RUN			mysql_install_db --user=mysql --datadir=/var/lib/mysql
RUN			/etc/init.d/mariadb setup
RUN			/etc/init.d/mariadb start
RUN         rc-update add mariadb default
#RUN         sh data.sh
#RUN         /etc/init.d/mariadb restart && mysql -u root -e "CREATE DATABASE wordpress;"
#RUN			mysql -u root -e "CREATE USER 'sboof'@'localhost' IDENTIFIED BY 'root';"
#RUN			mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'sboof'@'localhost' WITH GRANT OPTION;"
#RUN			mysql -u root -e "CREATE DATABASE IF NOT EXISTS wordpress; use wordpress; source wordpress.sql;"
#RUN			mysql -u root -e "GRANT ALL ON wordpress.* TO 'user'@'localhost' IDENTIFIED BY 'password';"
EXPOSE 		3306

CMD 		sh		setup.sh
