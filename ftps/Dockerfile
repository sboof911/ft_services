FROM 		alpine:latest

WORKDIR 	/home
COPY		srcs/vsftpd.conf			/home/
COPY		srcs/setup.sh				/home/
RUN			apk update
RUN			apk add vsftpd openrc openssl
RUN			openrc reboot
RUN			rc-update add vsftpd default
#RUN			rc-service vsftpd start
RUN			mv /home/vsftpd.conf		/etc/vsftpd/vsftpd.conf
#RUN 		mkdir -p /ftps/admin
RUN 		adduser admin -D -h /home/admin
RUN 		echo "admin:admin" | chpasswd
#RUN 		echo "admin" >> etc/vsftpd/vsftpd.userlist
#RUN 		chown admin:admin /ftps/admin
#RUN 		touch /var/log/vsftpd.log
RUN 		mkdir -p /home/admin/ftp/upload
RUN 		chmod 550 /home/admin/ftp && chmod 750 /home/admin/ftp/upload && chown -R admin: /home/admin/ftp/
RUN 		mkdir -p /etc/ssl/private/
RUN 		mkdir -p /etc/ssl/certs/
RUN			openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=US/ST=US/L=Texas/O=42/CN=127.0.0.1" -keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/certs/vsftpd.crt

EXPOSE 		21			21001 21002

CMD 		sh			/home/setup.sh
