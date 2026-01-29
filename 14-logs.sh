#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0|cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log" # /var/log/shell-script/14-logs.log

mkdir -p $LOGS_FOLDER

userid=$(id -u)
if [ $userid -ne 0 ]; then #Checking wther user has enough privelege to install packages
 echo -e "$R Ensure you have admin access to install mysql $N"
 exit 1
fi

echo "Script started execution at $(date)"|tee -a $LOG_FILE

validate(){
  if [ $1 -ne 0 ]; then #validating the installation status
    echo -e "$R ERROR: $2 installation got failed $N"|tee -a $LOG_FILE
    
    exit 1
  else
    echo -e "$G $2 installation is success $N"|tee -a $LOG_FILE
  fi

}

dnf list installed mysql &>>$LOG_FILE
#checking whther mysql installed or not
if [ $? -ne 0 ];then
    dnf install mysql -y &>>$LOG_FILE
    validate $? "mysql"
else
    echo -e "mysql already exist ... $Y skipping $N"|tee -a $LOG_FILE
fi    

 
dnf list installed nginx &>>$LOG_FILE
#checking whther nginx installed or not
if [ $? -ne 0 ];then
    dnf install nginx -y &>>$LOG_FILE
    validate $? "nginx"
else
    echo -e "nginx already exist ... $Y skipping $N"|tee -a $LOG_FILE
fi  

dnf list installed python3 &>>$LOG_FILE
#checking whther python3 installed or not
if [ $? -ne 0 ];then
    dnf install python3 -y &>>$LOG_FILE
    validate $? "python3"
else
    echo -e "python3 already exist ... $Y skipping $N"|tee -a $LOG_FILE
fi 

