#!/bin/bash
# Author: Lavoisier Bleriot
# Creation Date: 09/03/22
# Last Modified Date:
# Script Description: This script check if a file exist or not.
# Script Usage: 

function existing_file(){
    read -p "Enter the file name:" FILE 
    sleep 4
    echo
    if [ -f $FILE ]
      then 
          echo "The file exist"
    else 
          echo "This file doesnt exist"
    fi 
}
existing_file