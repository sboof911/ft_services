minikube docker-env
eval $(minikube -p minikube docker-env)

# docker build -t nginx ./nginx/
# docker build -t ftps ./ftps/
docker build -t grafana ./Grafana/
# docker build -t influxdb ./influxDB/
# # docker build -t mysql ./mysql/
# docker build -t phpmyadmin ./phpmyadmin/
# docker build -t wordpress ./wordpress/
# #docker run -d -p 3306:3306 mysql

# Building metallb
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.6/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.6/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

kubectl apply -f yaml/

minikube dashboard