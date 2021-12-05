## 環境
Mac

## コマンド
```
# hyperkit入れる
brew install hyperkit

# minikube入れる
brew install minikube

# minikube開始
minikube start --driver=hyperkit --kubernetes-version v1.18.2

# minikube確認
minikube status

# 自動作成されてるはずのcontextを使用
kubectl config use-context minikube

# node見てみる
kubectl get nodes

# 終わったら消しとく
minikube delete
```
