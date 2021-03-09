apk update
apk add nginx
adduser -g -S 'Nginx www user' -h /home/www/ sboof
# cp default /etc/nginx/conf.d/
mkdir /etc/ssl/nginx
apk add openssl
openssl req -x509 -nodes -new -keyout nginx.key -out nginx.crt -days 365 -subj "/C=Mo/ST=Oregon/L=Portland/O=ft_services/OU=Org/CN=www.sboof.com"
chnod 777 /etc/ssl/nginx
apk add openrc
