!/bin/bash
 
cd /opt/ci

### DEPLOY
sudo docker-compose up -d --force-recreate --build

sleep 5
sudo docker-compose ps 
