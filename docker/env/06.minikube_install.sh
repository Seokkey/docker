#!/bin/bash
# This installation refers to 
# https://containerjournal.com/topics/container-ecosystems/using-minikube-for-kubernetes-clusters/
# https://minikube.sigs.k8s.io/docs/start/
echo
tput setaf 4
cat << EOF
This is to install minukube into your ubuntu machine.
And change the mode of the file to make executable.
Finally, minikube is moved to ~/bin to be a part of $PATH
Press any key to continue :
EOF

echo
tput setaf 2
read -sn1
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod u+x minikube
sudo mv minikube ~/bin

echo
tput setaf 4
cat << EOF
This is to install kubectl tool into your ubuntu machine.
And change the mode of the file to make executable.
Finally, minikube is moved to ~/bin to be a part of $PATH
Press any key to continue :
EOF

echo
tput setaf 2
read -sn1
curl -LO https://storage.googleapis.com/kubernetes-release/release/\
$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)\
/bin/linux/amd64/kubectl
chmod u+x kubectl
mv mv kubectl ~/bin