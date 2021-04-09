#!/bin/bash

ssh -i /home/jenkins/.ssh/id_rsa ubuntu@18.133.226.200 << EOF

cd SF2/

sudo docker build backend -t aadilmoghal/backend
sudo docker build frontend -t aadilmoghal/frontend

sudo docker push aadilmoghal/frontend:latest

sudo docker push aadilmoghal/backend:latest

EOF