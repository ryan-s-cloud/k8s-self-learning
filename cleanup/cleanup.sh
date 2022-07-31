sudo kubeadm reset -f
sudo apt remove -y kubeadm kubectl kubelet kubernetes-cni
sudo apt purge -y kube* --allow-change-held-packages
sudo docker image prune -a
sudo systemctl restart docker
sudo apt purge -y docker-engine docker docker.io docker-ce docker-ce-cli containerd containerd.io runc --allow-change-held-packages
sudo apt purge -y docker-engine docker docker.io docker-ce docker-ce-cli containerd containerd.io runc --allow-change-held-packages
sudo apt autoremove -y
sudo rm -rf ~/.kube
sudo rm -rf /etc/cni /etc/kubernetes /var/lib/dockershim /var/lib/etcd /var/lib/kubelet /var/lib/etcd2/ /var/run/kubernetes ~/.kube/*
sudo rm -rf /var/lib/docker /etc/docker /var/run/docker.sock
sudo rm -f /etc/apparmor.d/docker /etc/systemd/system/etcd*
sudo apt autoremove -y
sudo groupdel docker
sudo apt update
sudo apt upgrade -y
