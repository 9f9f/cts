#docker run -d -it -v opends1 --name opends_main opends 
#docker stop

docker exec opends_main bash compile-IS-DESPOT-p.sh
docker exec opends_main bash compile-hyleap.sh
#docker exec opends_main bash compile-hyleap.sh
