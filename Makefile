up:
	minikube start --nodes=3

down:
	minikube stop

clean:
	minikube delete

tunnel:
	minikube tunnel --v 5

ingress-setup:
	minikube addons enable ingress

gen-cert:
	openssl req -x509 -nodes -days 3650 -newkey rsa:2048 -keyout ./.output/tls.key -out ./.output/tls.crt -subj "/CN=hoge.com"
	kubectl create secret tls --save-config sample-tls --key ./.output/tls.key --cert ./.output/tls.crt