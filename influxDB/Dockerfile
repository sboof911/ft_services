FROM		alpine:3.12

WORKDIR		/home

COPY        srcs/telegraf.conf      /home/
COPY        srcs/supervisord.conf   /etc/
RUN			apk update && apk add --no-cache supervisor
RUN			apk add --no-cache  libc6-compat && apk add --no-cache --upgrade bash && apk add influxdb
#setup telegraf
RUN         wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.2_linux_amd64.tar.gz
RUN         tar xf telegraf-1.16.2_linux_amd64.tar.gz

EXPOSE		8086
CMD         /usr/bin/supervisord -c /etc/supervisord.conf
