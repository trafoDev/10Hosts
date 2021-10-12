function evaluatePeerPort() {
  local ORG=$1
  local SERVICE=51

  local PORT_PREFIX=$((6 + ${ORG}))
  local PORT=$(($PORT_PREFIX * 1000 + ${SERVICE}))
  
  echo ${PORT}
}

setGlobals() {
  local ORG=$1

  export HOST=peer0.org${ORG}.hlftest.com
  export PORT=$(evaluatePeerPort ${ORG})
  
  export ORDERER_CA=${PWD}/crypto/ordererOrganizations/hlftest.com/orderers/orderer1.hlftest.com/msp/tlscacerts/tlsca.hlftest.com-cert.pem
  export CORE_PEER_LOCALMSPID="Org${ORG}MSP"
  export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/crypto/peerOrganizations/org${ORG}.hlftest.com/peers/${HOST}/tls/ca.crt
  export CORE_PEER_MSPCONFIGPATH=${PWD}/crypto/peerOrganizations/org${ORG}.hlftest.com/users/Admin@org${ORG}.hlftest.com/msp
  export CORE_PEER_ADDRESS=${HOST}:${PORT}

  #set -x

}
