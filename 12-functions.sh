#!/bin/bash
USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e "installing MySQL ...$R FAILURE"
        exit 1
    else
        echo -e"installing MySQL ...$G SUCCESS"
    fi
}

if [ $UPER -ne 0 ]
then 
    echo "ERROR:: you must have sudo access to execute this script"
    exit 1
fi

dnf list installed mysql

if [ $? -ne 0 ]
then 
    dnf install mysql -y
    VALIDATE $? "installing MySQL"
else
    echo -e " $Y MySQL is already installed"
fi

dnf list installed git 

if [ $? -ne 0 ]
then 
    dnf install git -y
    VALIDATE $? "installing git"
else
    echo -e " $Y git is already installed"
fi
