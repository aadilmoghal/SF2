#!/bin/bash

ssh -i /home/jenkins/.ssh/id_rsa ubuntu@18.133.226.200<< EOF

sudo docker push aadilmoghal/front_end:latest
sudo docker push aadilmoghal/back_end:latest

EOF