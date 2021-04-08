#!/bin/bash
ssh -i ~/.ssh/id_rsa ubuntu@18.133.226.200 << EOF

sudo rm -r SF2

git clone https://github.com/aadilmoghal/SF2.git

cd SF2/

git checkout kubernetes

sudo docker-compose up -d --build

sudo docker-compose down

EOF
