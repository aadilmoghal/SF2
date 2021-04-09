#!/bin/bash
# this command will ssh into vm
ssh -i /home/jenkins/.ssh/id_rsa ubuntu@18.133.226.200 << EOF
#! need to cd into repo folder first
cd SF2/
#! This is build the docker image and the push to dockerhub
sudo docker build backend -t aadilmoghal/backend
sudo docker build frontend -t aadilmoghal/frontend

sudo docker push aadilmoghal/frontend:latest

sudo docker push aadilmoghal/backend:latest

EOF