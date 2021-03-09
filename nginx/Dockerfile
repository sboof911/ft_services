FROM alpine:latest

WORKDIR 	/home
COPY 		srcs/	./srcs
EXPOSE 		80 443
RUN sh 		/home/srcs/setup.sh

CMD cat
