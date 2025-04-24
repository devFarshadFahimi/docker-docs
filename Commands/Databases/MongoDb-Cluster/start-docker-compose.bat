@echo off
docker compose up -d

docker exec -it mongo1 mongosh 



@pause