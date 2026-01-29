#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

userid=$(id -u)
if [ $userid -ne 0 ]; then
 echo -e "$R Ensure you have admin access to install mysql $N"
 exit 1
fi

validate(){
  if [ $1 -ne 0 ]; then
    echo "$R ERROR: $2 installation got failed $N"
    exit 1
  else
    echo "$G $2 installation is success $N"
fi

}
dnf install mysql -y
validate $? "mysql"

dnf install nginx -y
validate $? "nginx"

dnf install python3 -y
validate $? "python3"
