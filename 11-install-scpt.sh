#!/bin/bash
 USERiD=$(id -u)

 if if [ $USERID -ne 0 ]
 then
    echo "ERROR:: you must have sudo access to exicute this script"
fi

dnf install mysqll -y

if  [ $? -ne 0 ]
then
    echo "installing MySQL...Faillure"
    exit 1
else
    echo "install MySQL....sucess"
fi

dnf install git -y

if  [ $? -ne 0 ]
then
    echo "installing git...Faillure"
    exit 1
else
    echo "install git....sucess"
fi