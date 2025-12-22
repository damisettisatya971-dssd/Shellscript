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
