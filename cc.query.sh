

# peer0.org1
echo 'Query from peer0.org1.hlftest.com'
docker exec cli peer chaincode query -n fabcar -C mychannel -c '{"Args":["queryCar","CAR0"]}'
# peer0.org2
echo 'Query from peer0.org2.hlftest.com'
docker exec -e CORE_PEER_ADDRESS=peer0.org2.hlftest.com:8051 \
            -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.hlftest.com/peers/peer0.org2.hlftest.com/tls/ca.crt \
            cli peer chaincode query -n fabcar -C mychannel -c '{"Args":["queryCar","CAR0"]}'
# peer0.org0
echo 'Query from peer0.org0.hlftest.com'
docker exec -e CORE_PEER_ADDRESS=peer0.org0.hlftest.com:6051 \
            -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org0.hlftest.com/peers/peer0.org0.hlftest.com/tls/ca.crt \
            cli peer chaincode query -n fabcar -C mychannel -c '{"Args":["queryCar","CAR0"]}'
# peer0.org3
echo 'Query from peer0.org3.hlftest.com'
docker exec -e CORE_PEER_ADDRESS=peer0.org3.hlftest.com:9051 \
            -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3.hlftest.com/peers/peer0.org3.hlftest.com/tls/ca.crt \
            cli peer chaincode query -n fabcar -C mychannel -c '{"Args":["queryCar","CAR0"]}'
# peer0.org4
echo 'Query from peer0.org4.hlftest.com'
docker exec -e CORE_PEER_ADDRESS=peer0.org4.hlftest.com:10051 \
            -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org4.hlftest.com/peers/peer0.org4.hlftest.com/tls/ca.crt \
            cli peer chaincode query -n fabcar -C mychannel -c '{"Args":["queryCar","CAR0"]}'
# peer0.org5
echo 'Query from peer0.org5.hlftest.com'
docker exec -e CORE_PEER_ADDRESS=peer0.org5.hlftest.com:11051 \
            -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org5.hlftest.com/peers/peer0.org5.hlftest.com/tls/ca.crt \
            cli peer chaincode query -n fabcar -C mychannel -c '{"Args":["queryCar","CAR0"]}'
# peer0.org6
echo 'Query from peer0.org6.hlftest.com'
docker exec -e CORE_PEER_ADDRESS=peer0.org6.hlftest.com:12051 \
            -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org6.hlftest.com/peers/peer0.org6.hlftest.com/tls/ca.crt \
            cli peer chaincode query -n fabcar -C mychannel -c '{"Args":["queryCar","CAR0"]}'
# peer0.org7
echo 'Query from peer0.org7.hlftest.com'
docker exec -e CORE_PEER_ADDRESS=peer0.org7.hlftest.com:13051 \
            -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org7.hlftest.com/peers/peer0.org7.hlftest.com/tls/ca.crt \
            cli peer chaincode query -n fabcar -C mychannel -c '{"Args":["queryCar","CAR0"]}'
# peer0.org8
echo 'Query from peer0.org8.hlftest.com'
docker exec -e CORE_PEER_ADDRESS=peer0.org8.hlftest.com:14051 \
            -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org8.hlftest.com/peers/peer0.org8.hlftest.com/tls/ca.crt \
        cli peer chaincode query -n fabcar -C mychannel -c '{"Args":["queryCar","CAR0"]}'
# peer0.org9
echo 'Query from peer0.org9.hlftest.com'
docker exec -e CORE_PEER_ADDRESS=peer0.org9.hlftest.com:15051 \
            -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org9.hlftest.com/peers/peer0.org9.hlftest.com/tls/ca.crt \
            cli peer chaincode query -n fabcar -C mychannel -c '{"Args":["queryCar","CAR0"]}'
