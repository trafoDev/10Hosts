. ./variables.sh

docker-compose -f ./docker/host0.yaml -f ./docker/host1.yaml -f ./docker/host2.yaml -f ./docker/host3.yaml -f ./docker/host4.yaml\
               -f ./docker/host5.yaml -f ./docker/host6.yaml -f ./docker/host7.yaml -f ./docker/host8.yaml -f ./docker/host9.yaml down -v
docker rm $(docker ps -aq)
docker rmi $(docker images dev-* -q)
#docker volume rm $(docker volume ls -q)
