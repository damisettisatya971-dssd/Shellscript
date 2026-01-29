#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]; then
 echo "Ensure you have admin access to install mysql"
 exit 1
fi
dnf install mysql -y

if [ $? -ne 0 ]; then
  echo "ERROR: MySQL installation got failed"
  exit 1
else
  echo "MySQL installation is success"
fi

dnf install nginx -y
if [ $? -ne 0 ]; then
  echo "ERROR: nginx installation got failed"
  exit 1
else
  echo "nginx installation is success"
fi

dnf install python3 -y
if [ $? -ne 0 ]; then
  echo "ERROR: python3 installation got failed"
  exit 1
else
  echo "python3 installation is success"
fi