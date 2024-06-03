#!/bin/bash
cd /opt/CodeBuild_BlueGreen
sudo docker build -t node_app .
sudo docker run -itd -p 3000:3000 node_app:latest

