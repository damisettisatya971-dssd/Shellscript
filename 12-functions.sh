#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]; then
 echo "Ensure you have admin access to install mysql"
 exit 1
fi

validate(){
  if [ $1 -ne 0 ]; then
    echo "ERROR: $2 installation got failed"
    exit 1
  else
    echo "$2 installation is success"
fi

}
dnf install mysql -y
validate $? "mysql"

dnf install nginx -y
validate $? "nginx"

dnf install python3 -y
validate $? "python3"
