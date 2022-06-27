up:
	minikube start --nodes=3

down:
	minikube stop

clean:
	minikube delete

tunnel:
	minikube tunnel