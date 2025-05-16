#!/bin/bash

ID=(id -u)

if [ $ID -ne 0 ]
    then 
        echo "Error:: please try with the sudo access"
        exit 1
    else 
        echo "You are running with sudo access"
fi

validate(){

if [ $1 -eq 0 ]
    then 
        echo "Installing $2 is success"
    else
        echo "Installing $2 is failure"
        exit 1
fi
}

dnf list installed mysql

if [ $? -ne 0 ]
    then 
        echo "MySQL is not installed on this machine"
        echo "Installing MYSQL...."
        dnf install mysql -y
        validate $? "MySQL"
else
        echo "My is already installed on this machine"

fi

dnf list installed python3

if [ $? -ne 0 ]
    then 
        echo "Python is not installed on this machine"
        echo "Installing Python......"
        dnf install python3 -y
        validate $? "Python"
    else
        echo "Python is already installed on this machine"
fi