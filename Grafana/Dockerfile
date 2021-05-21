FROM		alpine:latest

WORKDIR 	/home
COPY 		srcs/setup.sh 		/home/
RUN			apk update
RUN			apk add --no-cache  libc6-compat && apk add --no-cache --upgrade bash
RUN			wget https://dl.grafana.com/enterprise/release/grafana-enterprise-7.3.1.linux-amd64.tar.gz
RUN			tar -zxvf grafana-enterprise-7.3.1.linux-amd64.tar.gz

EXPOSE		3000
CMD			sh					/home/setup.sh
