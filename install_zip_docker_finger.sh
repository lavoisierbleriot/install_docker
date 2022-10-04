#!/bin/bash
# Author: Lavoisier Bleriot
# Creation Date: 08/31/22
# Last Modified Date:09/01/22
# Script Description: This script check the operating system then Download Docker,finger and zip.
# Script Usage: 

Array=("zip" "docker-ce" "docker-ce-cli" "containerd.io" "docker-compose-plugin" "finger")
OS=$(cat /etc/issue | cut -c1-6)                                                          
USER=$(whoami)

if [ "${OS}" == "CentOS" ] && [ "${USER}" == "root" ];then
        yum update
        yum install -y yum-utils
        yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
       yum update
        sleep 3 
        for i in "${Array[@]}"
        do
	          yum install "$i" -y
        done
        sleep 3
        for i in "${Array[@]}"
        do
	         systemctl enable "$i"
        done
        sleep 3
        for i in "${Array[@]}"
        do
	        systemctl start "$i"
        done
        sleep 3
         for i in "${Array[@]}"
        do
	         systemctl status "$i"
        done
        sleep 3
        zip -v | grep This
        docker -v
        finger

    
    elif  [ "${OS}" == "Ubuntu" ] && [ "${USER}" == "root" ]  ;then
        apt update
        apt install apt-transport-https ca-certificates curl software-properties-common -y
        apt install curl -y
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
         apt update
         apt-cache policy docker-ce

        sleep 3
        for i in "${Array[@]}"
        do
	        apt install "$i" -y
        done
        sleep 3
        for i in "${Array[@]}"
        do
	        systemctl enable "$i" 
        done
        sleep 3
         for i in "${Array[@]}"
        do
	        systemctl start "$i"
        done
        sleep 3
         for i in "${Array[@]}"
        do
	        systemctl status "$i"
        done
        sleep 3
        zip -v | grep This
        docker -v
        finger 
    else
       echo "you should be root to download any package"
    fi 
    