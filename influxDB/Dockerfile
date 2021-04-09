FROM		alpine:latest

WORKDIR		/home

COPY		srcs/setup.sh		.
RUN			apk update
RUN			apk add --no-cache  libc6-compat && apk add --no-cache --upgrade bash
RUN			wget https://dl.influxdata.com/influxdb/releases/influxdb2-2.0.4-linux-amd64.tar.gz
RUN			tar -xzvf influxdb2-2.0.4-linux-amd64.tar.gz
RUN			rm -rf influxdb2-2.0.4-linux-amd64.tar.gz

EXPOSE		8086
CMD			sh					setup.sh
