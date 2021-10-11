. ./variables.sh

docker-compose -f ./docker/host${1}.yaml down -v
docker rm $(docker ps -aq)
docker rmi $(docker images dev-* -q)
