#!/bin/bash

ssh -i /home/jenkins/.ssh/id_rsa ubuntu@18.133.226.200<< EOF

docker push aadilmoghal/front_end:latest
docker push aadilmoghal/back_end:latest

EOF