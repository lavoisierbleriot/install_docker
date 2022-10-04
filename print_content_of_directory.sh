#!/bin/bash
# Author: Lavoisier Bleriot
# Creation Date: 08/31/22
# Last Modified Date:
# Script Description: Write a bash script to scan through a directory and print out all the content of that directory.
# Script Usage: 


read -p "create a directory: " DIRECTORY_NAME
sleep 2
if [ -d $DIRECTORY_NAME ]
  then 
  cat $