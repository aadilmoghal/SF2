#!/bin/bash
# ssh into machine first
ssh -i ~/.ssh/id_rsa ubuntu@18.133.226.200 << EOF
#! this will remove the clone image first if it is already present
sudo rm -r SF2
#! git will get clones to the machine
git clone https://github.com/aadilmoghal/SF2.git
cd SF2/
#!this ill build everything in the docker folder
sudo docker-compose up -d --build
#! we want to use this to test the app
sudo docker exec backend bash -c "pytest tests/ --cov application" 
sudo docker exec frontend bash -c "pytest tests/ --cov application"

sudo docker-compose down


EOF
