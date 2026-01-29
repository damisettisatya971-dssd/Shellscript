#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

userid=$(id -u)
if [ $userid -ne 0 ]; then #Checking wther user has enough privelege to install packages
 echo -e "$R Ensure you have admin access to install mysql $N"
 exit 1
fi

validate(){
  if [ $1 -ne 0 ]; then #validating the installation status
    echo -e "$R ERROR: $2 installation got failed $N"
    exit 1
  else
    echo -e "$G $2 installation is success $N"
  fi

}

dnf list installed mysql
#checking whther mysql installed or not
if [ $? -ne 0 ];then
    dnf install mysql -y
    validate $? "mysql"
else
    echo -e "mysql already exist ... $Y skipping $N"
fi    

 
dnf list installed nginx
#checking whther nginx installed or not
if [ $? -ne 0 ];then
    dnf install nginx -y
    validate $? "nginx"
else
    echo -e "nginx already exist ... $Y skipping $N"
fi  

dnf list installed python3
#checking whther python3 installed or not
if [ $? -ne 0 ];then
    dnf install python3 -y
    validate $? "python3"
else
    echo -e "python3 already exist ... $Y skipping $N"
fi 

