#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo " ERRoR:: you must have sudo access to execute this script"
fi

dnf install mysqll -y

dnf instal git -y