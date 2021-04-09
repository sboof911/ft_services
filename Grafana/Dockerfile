FROM		alpine:latest

WORKDIR		/home

RUN			apk update
RUN			wget https://dl.grafana.com/enterprise/release/grafana-enterprise-7.3.1.linux-amd64.tar.gz
RUN			tar -zxvf grafana-enterprise-7.3.1.linux-amd64.tar.gz

EXPOSE		3000

CMD			sh
