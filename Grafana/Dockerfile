FROM		alpine:3.12

WORKDIR 	/home
COPY        srcs/telegraf.conf      /home/
COPY        srcs/supervisord.conf   /etc/
RUN			apk update && apk add --no-cache supervisor
RUN			apk add --no-cache  libc6-compat && apk add --no-cache --upgrade bash
RUN			wget https://dl.grafana.com/enterprise/release/grafana-enterprise-7.3.1.linux-amd64.tar.gz
RUN			tar -zxvf grafana-enterprise-7.3.1.linux-amd64.tar.gz
COPY        srcs/grafana.db /home/grafana-7.3.1/data/
#setup telegraf
RUN         wget https://dl.influxdata.com/telegraf/releases/telegraf-1.16.2_linux_amd64.tar.gz
RUN         tar xf telegraf-1.16.2_linux_amd64.tar.gz

EXPOSE		3000
CMD         /usr/bin/supervisord -c /etc/supervisord.conf
