#!/bin/bash
ssh -i ~/.ssh/id_rsa ubuntu@18.133.226.200 << EOF

sudo rm -r SF2

git clone https://github.com/aadilmoghal/SF2.git

cd SF2/

sudo docker-compose up -d --build

sudo docker exec backend bash -c "pytest tests/ --cov application" 
sudo docker exec frontend bash -c "pytest tests/ --cov application"

sudo docker-compose down


EOF
