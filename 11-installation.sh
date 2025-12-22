#!/bin/bash

userid=$(id -u)

if [ $userid -eq 0 ]; then
 dnf install mysql -y
else
 echo "Ensure you have admin access to install mysql"
fi 
