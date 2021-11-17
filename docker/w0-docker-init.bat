docker stop opends_main
docker rm opends_main
docker rmi opends
docker volume rm opends_data

docker volume create opends_data
docker build -t opends:latest .

docker stop opends_main
docker rm opends_main
docker container create -it -v opends_data:/data --name opends_main opends

docker start opends_main

docker exec opends_main git clone https://github.com/9f9f/cts.git .

