#docker run -d -it -v opends1 --name opends_main opends 
#docker stop

docker stop opends_main
docker rm opends_main
docker container create -it -v opends_data:/data --name opends_main opends

#RELPATH=".."
#cd RELPATH
cd ..
#docker cp shared/* opends_main:/data

#for i in *.sh; do echo $i ; done
for i in *.sh; do docker cp $i opends_main:/data ; done

#docker cp compile-hyleap.sh opends_main:/data
#docker cp compile-IS-DESPOT-p.sh opends_main:/data
#docker cp run-hyleap-0-py.sh opends_main:/data
#docker cp run-hyleap-1-c.sh opends_main:/data
#docker cp run-IS-DESPOT-p.sh opends_main:/data
#docker cp run-nava3c-p.sh opends_main:/data

docker cp ISDESPOT opends_main:/data
docker cp Python   opends_main:/data

docker start opends_main

