FROM 		alpine:3.12

WORKDIR 	/home
COPY 		srcs/default.conf 	    /etc/nginx/
COPY        srcs/telegraf.conf      /home/
COPY        srcs/supervisord.conf   /etc/
RUN			apk update
RUN 		apk add openrc nginx openssl openssh && apk add --no-cache supervisor
RUN         rc-update add sshd
RUN 		openrc reboot
RUN 		adduser -S -g 'Nginx www user' -h /home/www/ sboof
RUN 		mkdir /etc/ssl/nginx
RUN 		openssl req -nodes -new -x509 -keyout /etc/ssl/nginx/nginx.key -out /etc/ssl/nginx/nginx.crt -days 365 -subj "/C=Mo/ST=Oregon/L=Portland/O=ft_services/OU=Org/CN=www.sboof.com"
RUN 		mkdir /run/nginx
RUN 		cp /etc/nginx/default.conf /etc/nginx/conf.d/
RUN 		echo "sboof was here !!!" > /home/www/index.html

#setup telegraf
RUN         wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.2_linux_amd64.tar.gz
RUN         tar xf telegraf-1.16.2_linux_amd64.tar.gz

EXPOSE 		80 					443
CMD         /usr/bin/supervisord -c /etc/supervisord.conf
