. ./variables.sh

docker exec cli peer chaincode invoke -o orderer3.hlftest.com:9050 \
            --channelID ${CHANNEL_ID} --name ${CC_NAME} \
            --tls true \
            --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.hlftest.com/peers/peer0.org1.hlftest.com/tls/ca.crt \
            --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/hlftest.com/orderers/orderer3.hlftest.com/msp/tlscacerts/tlsca.hlftest.com-cert.pem \
            --peerAddresses peer0.org1.hlftest.com:7051 \
            -c '{"Args":["ChangeCarOwner","CAR0", "Owner_form_invoke_1"]}'

