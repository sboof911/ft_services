#docker build -t nginx ./nginx/
#docker build -t ftps ./ftps/
#docker build -t grafana ./Grafana/
#docker build -t influxdb ./influxDB/
#docker build -t mysql ./mysql/
docker build -t phpmyadmin ./phpmyadmin/
#docker build -t wordpress ./wordpress/
#docker run -d -p 80:80 -p 443:443 nginx
#docker run -d -p 21:21 -p 21001:21001 -p 21002:21002 ftps
#docker run -d -p 3000:3000 grafana
#docker run -d -p 8086:8086 influxdb
docker run -d -p 5000:5000 phpmyadmin
#docker run -d -p 5050:5050 wordpress
#docker run -d -p 3306:3306 mysql