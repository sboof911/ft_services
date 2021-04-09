FROM 		alpine:latest

WORKDIR 	/home
COPY 		srcs/default.conf 	/etc/nginx/
COPY 		srcs/setup.sh 		/home/
RUN			apk update
RUN 		apk add openrc nginx openssl
RUN 		openrc reboot
RUN 		adduser -S -g 'Nginx www user' -h /home/www/ sboof
RUN 		mkdir /etc/ssl/nginx
RUN 		openssl req -nodes -new -x509 -keyout /etc/ssl/nginx/nginx.key -out /etc/ssl/nginx/nginx.crt -days 365 -subj "/C=Mo/ST=Oregon/L=Portland/O=ft_services/OU=Org/CN=www.sboof.com"
RUN 		mkdir /run/nginx
RUN 		cp /etc/nginx/default.conf /etc/nginx/conf.d/
RUN 		echo "sboof was here !!!" > /home/www/index.html
#RUN 		/etc/init.d/nginx restart

EXPOSE 		80 					443
CMD 		sh					/home/setup.sh
