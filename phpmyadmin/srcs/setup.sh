#nginx installation
apk update
apk add openrc nginx
openrc reboot
rc-update add nginx default
rc-service nginx start
mv /home/default.conf /etc/nginx/conf.d/
adduser -S -g 'Nginx www user' -h /home/www/ sboof
/etc/init.d/nginx restart
#phpmyadmin installation
apk add php7-fpm php7-mcrypt php7-soap php7-session php-mbstring php7-openssl php7-gmp php7-pdo_odbc php7-json php7-dom php7-pdo php7-zip php7-mysqli php7-sqlite3 php7-apcu php7-pdo_pgsql php7-bcmath php7-gd php7-odbc php7-pdo_mysql php7-pdo_sqlite php7-gettext php7-xmlreader php7-xmlrpc php7-bz2 php7-iconv php7-pdo_dblib php7-curl php7-ctype
cd /home/www
wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz
tar zxvf phpMyAdmin-5.0.2-all-languages.tar.gz
rm phpMyAdmin-5.0.2-all-languages.tar.gz
mv phpMyAdmin-5.0.2-all-languages/* .
rm -rf phpMyAdmin-5.0.2-all-languages
mkdir tmp
chmod 777 tmp
/etc/init.d/php-fpm7 start
tee -a
