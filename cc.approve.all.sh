export PACKAGE_ID=$(docker exec cli peer lifecycle chaincode queryinstalled --output json | jq -r '.installed_chaincodes[0].package_id')

# peer0.org1
docker exec cli peer lifecycle chaincode approveformyorg \
            --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/hlftest.com/orderers/orderer1.hlftest.com/msp/tlscacerts/tlsca.hlftest.com-cert.pem \
            --channelID mychannel --name fabcar --version 1 --sequence 1 --waitForEvent \
            --package-id $PACKAGE_ID

# peer0.org0
docker exec -e CORE_PEER_ADDRESS=peer0.org0.hlftest.com:6051 \
            -e CORE_PEER_LOCALMSPID="Org0MSP" \
            -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org0.hlftest.com/peers/peer0.org0.hlftest.com/tls/ca.crt \
            -e CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org0.hlftest.com/users/Admin@org0.hlftest.com/msp  \
            cli peer lifecycle chaincode approveformyorg \
            --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/hlftest.com/orderers/orderer1.hlftest.com/msp/tlscacerts/tlsca.hlftest.com-cert.pem \
            --channelID mychannel --name fabcar --version 1 --sequence 1 --waitForEvent \
            --package-id $PACKAGE_ID
# peer0.org2
docker exec -e CORE_PEER_ADDRESS=peer0.org2.hlftest.com:8051 \
            -e CORE_PEER_LOCALMSPID="Org2MSP" \
            -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.hlftest.com/peers/peer0.org2.hlftest.com/tls/ca.crt \
            -e CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.hlftest.com/users/Admin@org2.hlftest.com/msp \
            cli peer lifecycle chaincode approveformyorg \
            --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/hlftest.com/orderers/orderer1.hlftest.com/msp/tlscacerts/tlsca.hlftest.com-cert.pem \
            --channelID mychannel --name fabcar --version 1 --sequence 1 --waitForEvent \
            --package-id $PACKAGE_ID
# peer0.org3
docker exec -e CORE_PEER_ADDRESS=peer0.org3.hlftest.com:9051 \
            -e CORE_PEER_LOCALMSPID="Org3MSP" \
            -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3.hlftest.com/peers/peer0.org3.hlftest.com/tls/ca.crt \
            -e CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3.hlftest.com/users/Admin@org3.hlftest.com/msp \
            cli peer lifecycle chaincode approveformyorg \
            --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/hlftest.com/orderers/orderer1.hlftest.com/msp/tlscacerts/tlsca.hlftest.com-cert.pem \
            --channelID mychannel --name fabcar --version 1 --sequence 1 --waitForEvent \
            --package-id $PACKAGE_ID
# peer0.org4
docker exec -e CORE_PEER_ADDRESS=peer0.org4.hlftest.com:10051 \
            -e CORE_PEER_LOCALMSPID="Org4MSP" \
            -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org4.hlftest.com/peers/peer0.org4.hlftest.com/tls/ca.crt \
            -e CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org4.hlftest.com/users/Admin@org4.hlftest.com/msp \
            cli peer lifecycle chaincode approveformyorg \
            --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/hlftest.com/orderers/orderer1.hlftest.com/msp/tlscacerts/tlsca.hlftest.com-cert.pem \
            --channelID mychannel --name fabcar --version 1 --sequence 1 --waitForEvent \
            --package-id $PACKAGE_ID
# peer0.org52
docker exec -e CORE_PEER_ADDRESS=peer0.org5.hlftest.com:11051 \
            -e CORE_PEER_LOCALMSPID="Org5MSP" \
            -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org5.hlftest.com/peers/peer0.org5.hlftest.com/tls/ca.crt \
            -e CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org5.hlftest.com/users/Admin@org5.hlftest.com/msp \
            cli peer lifecycle chaincode approveformyorg \
            --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/hlftest.com/orderers/orderer1.hlftest.com/msp/tlscacerts/tlsca.hlftest.com-cert.pem \
            --channelID mychannel --name fabcar --version 1 --sequence 1 --waitForEvent \
            --package-id $PACKAGE_ID
# peer0.org6
docker exec -e CORE_PEER_ADDRESS=peer0.org6.hlftest.com:12051 \
            -e CORE_PEER_LOCALMSPID="Org6MSP" \
            -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org6.hlftest.com/peers/peer0.org6.hlftest.com/tls/ca.crt \
            -e CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org6.hlftest.com/users/Admin@org6.hlftest.com/msp \
            cli peer lifecycle chaincode approveformyorg \
            --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/hlftest.com/orderers/orderer1.hlftest.com/msp/tlscacerts/tlsca.hlftest.com-cert.pem \
            --channelID mychannel --name fabcar --version 1 --sequence 1 --waitForEvent \
            --package-id $PACKAGE_ID
# peer0.org7
docker exec -e CORE_PEER_ADDRESS=peer0.org7.hlftest.com:13051 \
            -e CORE_PEER_LOCALMSPID="Org7MSP" \
            -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org7.hlftest.com/peers/peer0.org7.hlftest.com/tls/ca.crt \
            -e CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org7.hlftest.com/users/Admin@org7.hlftest.com/msp \
            cli peer lifecycle chaincode approveformyorg \
            --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/hlftest.com/orderers/orderer1.hlftest.com/msp/tlscacerts/tlsca.hlftest.com-cert.pem \
            --channelID mychannel --name fabcar --version 1 --sequence 1 --waitForEvent \
            --package-id $PACKAGE_ID
# peer0.org8
docker exec -e CORE_PEER_ADDRESS=peer0.org8.hlftest.com:14051 \
            -e CORE_PEER_LOCALMSPID="Org8MSP" \
            -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org8.hlftest.com/peers/peer0.org8.hlftest.com/tls/ca.crt \
            -e CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org8.hlftest.com/users/Admin@org8.hlftest.com/msp \
            cli peer lifecycle chaincode approveformyorg \
            --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/hlftest.com/orderers/orderer1.hlftest.com/msp/tlscacerts/tlsca.hlftest.com-cert.pem \
            --channelID mychannel --name fabcar --version 1 --sequence 1 --waitForEvent \
            --package-id $PACKAGE_ID
# peer0.org9
docker exec -e CORE_PEER_ADDRESS=peer0.org9.hlftest.com:15051 \
            -e CORE_PEER_LOCALMSPID="Org9MSP" \
            -e CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org9.hlftest.com/peers/peer0.org9.hlftest.com/tls/ca.crt \
            -e CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org9.hlftest.com/users/Admin@org9.hlftest.com/msp \
            cli peer lifecycle chaincode approveformyorg \
            --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/hlftest.com/orderers/orderer1.hlftest.com/msp/tlscacerts/tlsca.hlftest.com-cert.pem \
            --channelID mychannel --name fabcar --version 1 --sequence 1 --waitForEvent \
            --package-id $PACKAGE_ID

# check statuses
docker exec cli peer lifecycle chaincode checkcommitreadiness --channelID mychannel --name fabcar --version 1 --sequence 1