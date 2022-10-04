#!/bin/bash
echo "user name"
sleep 3
read -p "Enter your name :" NAME 
sleep 4
echo 
echo
echo "Group name"
sleep 3
echo 
echo
read -p "Enter the group name:" GROUP 
sleep 4
echo 
echo
echo "User password"
sleep 4
echo
echo
read -p "Enter a password:" PASSWORD 
sleep 3
echo 
echo
echo "create group"
echo 
echo
aws iam create-group --group-name $GROUP
sleep 4
echo 
echo
echo "Create user name"
aws iam create-user --user-name $NAME 
sleep 4
echo
echo
echo "Create password"
sleep 4
aws iam create-password --user-password $PASSWORD 
echo
echo
echo "adding user to group"
sleep 4
aws iam add-user-to-group --user-name $NAME --group-name $GROUP 
echo
echo 
echo "create a policy"
sleep 4
aws iam create-policy --policy-name test_policy --policy-document file://test_policy.js
echo
echocl
echo "attach-user-policy"
sleep 4
aws iam attach-user-policy --policy-arn arn:aws:iam::aws:policy/IAMFullAccess --user-name $NAME
echo
echo 
echo "attach-group-policy"
sleep 4
aws iam attach-group-policy arn:aws:iam::aws:policy/IAMFullAccess./ --group-name $GROUP
echo 
echo

 