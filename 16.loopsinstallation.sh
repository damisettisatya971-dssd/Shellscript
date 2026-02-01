#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0|cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log" # /var/log/shell-script/14-logs.log

mkdir -p $LOGS_FOLDER
echo "Script started executed at: $(date)" | tee -a $LOG_FILE

userid=$(id -u)
if [ $userid -ne 0 ]; then #Checking wther user has enough privelege to install packages
 echo -e "$R Ensure you have admin access to install mysql $N"
 exit 1
fi

validate(){
  if [ $1 -ne 0 ]; then #validating the installation status
    echo -e "$R ERROR: $2 installation got failed $N"|tee -a $LOG_FILE
    exit 1
  else
    echo -e "$G $2 installation is success $N"|tee -a $LOG_FILE
  fi
}

for $package in $@
do
    dnf list installed $package &>>$LOG_FILE
    #checking whther mysql installed or not
    if [ $? -ne 0 ];then
        dnf install $package -y &>>$LOG_FILE
        validate $? "$package"
    else
        echo -e "$package already exist ... $Y skipping $N"|tee -a $LOG_FILE
    fi 
done

