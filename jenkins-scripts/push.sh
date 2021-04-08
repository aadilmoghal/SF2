#!/bin/bash

ssh -i /home/jenkins/.ssh/id_rsa ubuntu@18.133.226.200 << EOF

cd SF2/

git checkout kubernetes

cd frontend
sudo docker push aadilmoghal/front_end:latest

cd ..

cd backend

sudo docker push aadilmoghal/back_end:latest

EOF