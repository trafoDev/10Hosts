. ./variables.sh

docker-compose -f ./docker/host0.yaml -f ./docker/host1.yaml -f ./docker/host2.yaml -f ./docker/host3.yaml -f ./docker/host4.yaml\
               -f ./docker/host5.yaml -f ./docker/host6.yaml -f ./docker/host7.yaml -f ./docker/host8.yaml -f ./docker/host9.yaml up -d
sleep 10

./channel.up.sh
sleep 10
./channel.anchor.sh
sleep 10

./cc.pack.sh
./cc.install.all.sh
./cc.approve.all.sh
./cc.commit.sh

sleep 10

./cc.init.sh
sleep 2
./cc.query.sh