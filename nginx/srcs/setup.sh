apk update
apk add openrc nginx openssl
openrc reboot
adduser -S -g 'Nginx www user' -h /home/www/ sboof
mkdir /etc/ssl/nginx
openssl req -nodes -new -x509 -keyout /etc/ssl/nginx/nginx.key -out /etc/ssl/nginx/nginx.crt -days 365 -subj "/C=Mo/ST=Oregon/L=Portland/O=ft_services/OU=Org/CN=www.sboof.com"
mkdir /run/nginx
cp /etc/nginx/default.conf /etc/nginx/conf.d/
echo "sboof was here !!!" > /home/www/index.html
/etc/init.d/nginx start
tee -a
