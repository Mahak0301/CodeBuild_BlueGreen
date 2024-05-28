#!/bin/bash
# FILE=/home/ubuntu/CodeBuild_BlueGreen/index.js
# if test -f "$FILE"; then
#    echo "$FILE exists"
#    cd /home/ubuntu/
#    pm2 stop --silent index.js
#    pm2 delete index.js
#    killall -9 node
# else 
#     echo "$FILE does not exist."
# fi
#cd /home/ubuntu/
# sudo rm -rf CodeBuild_BlueGreen
# sudo mkdir CodeBuild_BlueGreen
# Add Docker's official GPG key:
# sudo apt-get update
# sudo apt-get install ca-certificates curl
# sudo install -m 0755 -d /etc/apt/keyrings
# sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
# sudo chmod a+r /etc/apt/keyrings/docker.asc

# # Add the repository to Apt sources:
# echo \
#   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
#   $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
#   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# sudo apt-get update
# sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 205429787317.dkr.ecr.ap-south-1.amazonaws.com
docker pull 205429787317.dkr.ecr.ap-south-1.amazonaws.com/msw_ecr_repo:latest
docker run -itd -p 3000:3000 205429787317.dkr.ecr.ap-south-1.amazonaws.com/msw_ecr_repo