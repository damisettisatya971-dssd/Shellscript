#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]; then
 echo "Ensure you have admin access to install mysql"
dnf install mysql -y
if [ $? -eq 0 ]; then
 echo "ERROR: MySQL installation got failed"
else
 echo "MySQL installed successfully"
fi 
