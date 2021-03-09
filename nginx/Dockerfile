FROM alpine:latest

WORKDIR 	/home

#RUN apk update && apk add openrc nginx openssl
#RUN adduser -S -g "Nginx www user" -h /home/www sboof
#RUN mkdir /etc/ssl/nginx
#RUN openssl req -nodes -new -x509 -keyout /etc/ssl/nginx/nginx.key -out /etc/ssl/nginx/nginx.crt -days 365 -subj "/C=Mo/ST=Oregon/L=Portland/O=ft_services/OU=Org/CN=www.sboof.com"
#RUN mkdir /run/nginx
#RUN echo "it's working" > /home/www/index.html
COPY srcs/default.conf /etc/nginx/
COPY srcs/setup.sh /home/

EXPOSE 80 443
CMD sh /home/setup.sh
