#!/bin/bash
cd /home/ubuntu/CodeBuild_BlueGreen
NODE_ENV=production pm2 start index.js -f
