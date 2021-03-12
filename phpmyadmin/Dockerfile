FROM 	alpine:latest

WORKDIR /home

COPY 	srcs/default.conf 	.
COPY	srcs/setup.sh 		.

EXPOSE 	5000

CMD	sh		/home/setup.sh
