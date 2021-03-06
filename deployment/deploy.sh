#!/usr/bin/env bash
#1. define variable
IP_ADDRESS=54.254.128.31
USER_NAME=ubuntu
PEM_FILE=demo5.pem
ROOT_PATH=/home/${USER_NAME}
PROJECT_NAME=demo
JAR_NAME=Prototype-1.0-SNAPSHOT.jar
PROPERTY_NAME=application.properties
WORK_FOLDER=${ROOT_PATH}/${PROJECT_NAME}
WORK_DEVELOPMENT_FOLDER=${WORK_FOLDER}/deployment
PROJECT_PATH=/d/DATA/study/AWS/prototype/
PROJECT_DEPLOYMENT_PATH=${PROJECT_PATH}/deployment
JAR_FILE_PATH=${PROJECT_PATH}/target/${JAR_NAME}
PROPERTY_FILE_PATH=${PROJECT_PATH}/${PROPERTY_NAME}
MYSQL_USER=admin
MYSQL_PASSWORD=admin
sql_script_name=sample.sql

#2: COPY JAR FILE TO DEPLOYMENT FOLDER
cp ${JAR_FILE_PATH} ${PROJECT_DEPLOYMENT_PATH}
cp ${PROPERTY_FILE_PATH} ${PROJECT_DEPLOYMENT_PATH}

#2. COPY FILE FROM LOCAL TO EC2
cd ${PROJECT_DEPLOYMENT_PATH}
ssh -i ${PEM_FILE} ${USER_NAME}@${IP_ADDRESS} "rm -r ${WORK_FOLDER}; mkdir ${WORK_FOLDER}; chmod 775 ${WORK_FOLDER}; exit;"
scp -i ${PEM_FILE} -r ${PROJECT_DEPLOYMENT_PATH} ${USER_NAME}@${IP_ADDRESS}:${WORK_FOLDER}


#3. EXECUTE SQL
ssh -i ${PEM_FILE} ${USER_NAME}@${IP_ADDRESS} "cd ${WORK_DEVELOPMENT_FOLDER}; mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} < ${sql_script_name}"

#4. Execute JAR FILE                                                                                    
ssh -i ${PEM_FILE} ${USER_NAME}@${IP_ADDRESS} "sudo kill -9 `ps -ef | grep ${JAR_NAME}  | grep -v grep | awk '{print $2}'` ; cd ${WORK_DEVELOPMENT_FOLDER}; java -jar ${JAR_NAME} &"
exit