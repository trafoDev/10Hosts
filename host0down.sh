docker-compose -f host0.yaml down -v
docker rm $(docker ps -aq)
docker rmi $(docker images dev-* -q)
docker volume rm $(docker volume -q)
