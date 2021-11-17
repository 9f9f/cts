#docker run -d -it -v opends1 --name opends_main opends 
#docker stop

docker stop opends_main
docker rm opends_main
docker rmi opends
docker volume rm opends_data


