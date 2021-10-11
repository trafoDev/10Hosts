. ./variables.sh

docker exec cli peer lifecycle chaincode commit -o orderer1.hlftest.com:7050 \
            --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/hlftest.com/orderers/orderer1.hlftest.com/msp/tlscacerts/tlsca.hlftest.com-cert.pem \
            --peerAddresses peer0.org0.hlftest.com:6051 \
            --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org0.hlftest.com/peers/peer0.org0.hlftest.com/tls/ca.crt \
            --peerAddresses peer0.org1.hlftest.com:7051 \
            --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.hlftest.com/peers/peer0.org1.hlftest.com/tls/ca.crt \
            --peerAddresses peer0.org2.hlftest.com:8051 \
            --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.hlftest.com/peers/peer0.org2.hlftest.com/tls/ca.crt \
            --peerAddresses peer0.org3.hlftest.com:9051 \
            --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3.hlftest.com/peers/peer0.org3.hlftest.com/tls/ca.crt \
            --peerAddresses peer0.org4.hlftest.com:10051 \
            --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org4.hlftest.com/peers/peer0.org4.hlftest.com/tls/ca.crt \
            --peerAddresses peer0.org5.hlftest.com:11051 \
            --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org5.hlftest.com/peers/peer0.org5.hlftest.com/tls/ca.crt \
            --peerAddresses peer0.org6.hlftest.com:12051 \
            --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org6.hlftest.com/peers/peer0.org6.hlftest.com/tls/ca.crt \
            --peerAddresses peer0.org7.hlftest.com:13051 \
            --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org7.hlftest.com/peers/peer0.org7.hlftest.com/tls/ca.crt \
            --peerAddresses peer0.org8.hlftest.com:14051 \
            --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org8.hlftest.com/peers/peer0.org8.hlftest.com/tls/ca.crt \
            --peerAddresses peer0.org9.hlftest.com:15051 \
            --tlsRootCertFiles /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org9.hlftest.com/peers/peer0.org9.hlftest.com/tls/ca.crt \
            --signature-policy "OR('Org0MSP.peer', 'Org1MSP.peer', 'Org2MSP.peer', 'Org3MSP.peer', 'Org4MSP.peer', 'Org5MSP.peer', 'Org6MSP.peer', 'Org7MSP.peer', 'Org8MSP.peer', 'Org9MSP.peer')" \
             --channelID ${CHANNEL_ID} --name ${CC_NAME} --version ${VERSION_NB} --sequence ${SEQUENCE_NB} 


docker exec cli peer lifecycle chaincode querycommitted --channelID ${CHANNEL_ID} --name ${CC_NAME}