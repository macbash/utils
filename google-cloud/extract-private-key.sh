#!/bin/bash
# Extract the Private key from Google Cloud Credentials Json
# 
sudo yum install -y jq

echo "#---Below is the private key---#"
echo -e `cat ${1} | jq .private_key` | tr -d '"'
