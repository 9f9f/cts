docker stop opends_main
docker rm opends_main
docker rmi opends
docker volume rm opends_data

docker volume create opends_data
docker build -t opends:latest .

docker stop opends_main
docker rm opends_main
docker container create -it -v opends_data:/data --name opends_main opends

cd ..

docker start opends_main

docker exec --rm --volumes-from opends_main -v $(pwd)/..:/backup opends_main bash -c "cd /data && tar xvf /backup/external.tar --strip 1"


