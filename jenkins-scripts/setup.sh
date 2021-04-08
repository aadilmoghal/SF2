#!/bin/bash
ssh -i ~/.ssh/id_rsa ubuntu@3.10.205.80 << EOF

sudo rm -r SF2

git clone https://github.com/aadilmoghal/SF2.git

cd SF2/

git checkout kubernetes


docker-compose up -d --build


docker-compose down

EOF
