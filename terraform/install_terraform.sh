#!/bin/bash
#Below script will work in Amazon linux and Redhat/Centos distributions
#
version="${1}"
binPath="${2}"

curl -o /tmp/terraform_${version}_linux_amd64.zip  https://releases.hashicorp.com/terraform/${version}/terraform_${version}_linux_amd64.zip


sudo yum install -y unzip
sudo unzip terraform_${version}_linux_amd64.zip
sudo mv terraform /usr/bin/

sudo chmod +x /usr/bin/terraform

echo "Version:`/usr/bin/terraform -version`"

if [[ $? -eq 0 ]]; then
   echo "Terraform Installed Successfully"
else
   echo "Something Went Wrong"
fi

