#!/bin/bash
read -p "Enter your Bucket Name:" Bucket 
sleep 2
echo "create a bucket"
sleep 2
 aws s3 mb s3://$Bucket --region us-east-1
 sleep 2
 echo "Copy a picture inside the bucket"
 sleep 2
 aws s3 cp install_zip_docker_finger.sh s3://$Bucket
