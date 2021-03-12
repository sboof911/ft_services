FROM 	alpine:latest

WORKDIR /home

COPY 	srcs/default.conf 	.
COPY	srcs/setup.sh 		.

EXPOSE 	5050

CMD	sh		/home/setup.sh
