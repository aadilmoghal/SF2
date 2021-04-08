#!/bin/bash
chmod 400 ~/.ssh/id_rsa
ssh -i ~/.ssh/id_rsa ubuntu@3.10.205.80 << EOF

sudo rm -r SF2

git clone https://github.com/aadilmoghal/SF2.git

cd SF2/

docker-compose up -d --build

docker exec backend bash -c "pytest tests/ --cov application" >> backend_test.txt
docker exec frontend bash -c "pytest tests/ --cov application" >> frontend_test.txt

docker-compose down

EOF
