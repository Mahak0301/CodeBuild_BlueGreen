# #!/bin/bash
# cd /home/ubuntu/CodeBuild_BlueGreen
# # sudo pm2 start index.js -f

# aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 205429787317.dkr.ecr.ap-south-1.amazonaws.com
# docker pull 205429787317.dkr.ecr.ap-south-1.amazonaws.com/msw_ecr_repo:latest
# docker run -itd -p 3000:3000 205429787317.dkr.ecr.ap-south-1.amazonaws.com/msw_ecr_repo
