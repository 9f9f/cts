#docker run -d -it -v opends1 --name opends_main opends 
#docker stop

docker stop opends_main
docker rm opends_main
docker container create -it -v opends_data:/data --name opends_main opends
#docker container create -it --name opends_main opends

docker start opends_main

docker exec opends_main git clone https://github.com/9f9f/cts.git .
