apk update
apk add nginx
adduser -S -g 'Nginx www user' -h /home/www/ sboof
mv /home/srcs/default.conf /etc/nginx/conf.d/
mkdir /etc/ssl/nginx
apk add openssl
openssl req -nodes -new -x509 -keyout /etc/ssl/nginx/nginx.key -out /etc/ssl/nginx/nginx.crt -days 365 -subj "/C=Mo/ST=Oregon/L=Portland/O=ft_services/OU=Org/CN=www.sboof.com"
chmod 0600 /etc/ssl/nginx
chmod 777 /sys
apk add openrc
mkdir /run/nginx
nginx -t
openrc reboot
#service nginx start
#echo "sboof was here !!!" > home/www/index.html
