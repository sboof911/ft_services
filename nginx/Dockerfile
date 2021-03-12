FROM 		alpine:latest

WORKDIR 	/home
COPY 		srcs/default.conf 	/etc/nginx/
COPY 		srcs/setup.sh 		/home/

EXPOSE 		80 					443
CMD 		sh 					/home/setup.sh
