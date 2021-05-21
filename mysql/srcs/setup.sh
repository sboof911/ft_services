#apk add mysql mysql-client openrc
#openrc reboot
#mysql_install_db --user=mysql --datadir=/var/lib/mysql
#/etc/init.d/mariadb start
#mysql -u root -e "CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';"
#mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;"
rc-service mariadb restart
tee -a

