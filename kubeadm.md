## コマンド
```
# multipass入れる
brew install multipass

# multipass確認
multipass version

# ubuntuのVM作成
multipass launch -n primary --cpus 3

# multipassからVMに接続
multipass shell

# VMで実行するコマンド
sudo apt update

sudo apt install -y apt-transport-https

sudo apt install -y curl

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

sudo apt update

sudo apt install -y kubelet=1.18.2-00 kubeadm=1.18.2-00 kubectl=1.18.2-00 docker.io

sudo apt-mark hold kubelet kubeadm kubectl docker.io

cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bradge-nf-call-ip6tables = 1
net.bridge.bradge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF

sudo sysctl --system

sudo kubeadm init --kubernetes-version=1.18.2 --pod-network-cidr=10.244.0.0/16

exit

# 終わったら消しとく
multipass delete primary
multipass purge
```
