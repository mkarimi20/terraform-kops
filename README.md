# terraform-kops
All automation tools should be the same release specially kops and kubernetes. 

install kubectl version 1.15
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.15.0/bin/linux/amd64/kubectl


#installing kops
https://kubernetes.io/docs/tasks/tools/install-kubectl/
install kops curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64


chmod +x ./kops

sudo mv ./kops /usr/local/bin/


kops create cluster "your-domain-name" --state=s3://"your-s3-bucket" --master-count=3 --master-size="t2.micro" --master-zones="eu-west-1a,eu-west-1b,eu-west-1c" --node-count=3 --node-size="t2.micro" --zones="eu-west-1a,eu-west-1b,eu-west-1c" --networking="weave" --topology="private" --bastion="true" --out=. --target="terraform"