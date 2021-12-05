## コマンド
```
# kind入れる
brew install kind

# kindバージョン確認
kind version

# kindでクラスタ作るためのファイルを作成
cat <<EOF > kind.yml
apiVersion: kind.x-k8s.io/v1alpha4
kind: Cluster
nodes:
- role: control-plane
  image: kindest/node:v1.18.2
- role: control-plane
  image: kindest/node:v1.18.2
- role: control-plane
  image: kindest/node:v1.18.2
- role: worker
  image: kindest/node:v1.18.2
- role: worker
  image: kindest/node:v1.18.2
- role: worker
  image: kindest/node:v1.18.2
EOF

# kindでクラスタ作る
kind create cluster --config kind.yml --name kindcluster

# context切り替え
kubectl config use-context kind-kindcluster

# dockerコンテナ見てみる
docker ps

# node見てみる
kubectl get node

# 終わったら消しとく
kind delete cluster --name kindcluster
```
