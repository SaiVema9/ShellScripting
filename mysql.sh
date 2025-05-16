#!/bin/bash

Id=$(id -u)

if [ $Id -ne 0 ]
then 
    echo "Error:: Please use root user access"
else 
    echo "You are in root user access only"x