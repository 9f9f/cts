#docker run -d -it -v opends1 --name opends_main opends 
#docker stop

docker exec opends_main bash run-IS-DESPOT-p.sh "$@"
