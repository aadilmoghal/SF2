#!/bin/bash

ssh -i /home/jenkins/.ssh/id_rsa ubuntu@3.10.205.80 << EOF

docker push aadilmoghal/front_end:latest
docker push aadilmoghal/back_end:latest

EOF