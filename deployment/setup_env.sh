#!/usr/bin/env bash
IP_ADDRESS=54.254.128.31
USER_NAME=ubuntu
PEM_FILE=demo5.pem
sql_script_name=mysql_create_users.sql
WORK_FOLDER=/home/${USER_NAME}

#1. SSH to EC2
#ssh ${USER_NAME}@${IP_ADDRESS} -i demo.pem
#2. Setup Java
ssh -i ${PEM_FILE} ${USER_NAME}@${IP_ADDRESS} "sudo apt update"
ssh -i ${PEM_FILE} ${USER_NAME}@${IP_ADDRESS} "sudo apt install openjdk-8-jdk"
#sudo update-alternatives --config java
#3 Setup MySQL
scp -i ${PEM_FILE} -r ${sql_script_name} ${USER_NAME}@${IP_ADDRESS}:${WORK_FOLDER}
#ssh -i ${PEM_FILE} ${USER_NAME}@${IP_ADDRESS} "sudo apt-get install mysql-server ; cd ${WORK_FOLDER}; mysql -uroot -proot < ${sql_script_name} ; "                                               
#ssh -i ${PEM_FILE} ${USER_NAME}@${IP_ADDRESS} "sudo service mysql restart"