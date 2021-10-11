SRC=$(dirname "$0")
export FABRIC_CFG_PATH=$PWD/${SRC}
. ${SRC}/../variables.sh

mkdir -p ${SRC}/../channel-artifacts

${SRC}/bin/configtxgen -profile AllOrgsChannel -outputCreateChannelTx   ${SRC}/../channel-artifacts/channel.tx        -channelID ${CHANNEL_ID}
${SRC}/bin/configtxgen -profile AllOrgsChannel -outputAnchorPeersUpdate ${SRC}/../channel-artifacts/Org0MSPanchors.tx -channelID ${CHANNEL_ID} -asOrg Org0MSP
${SRC}/bin/configtxgen -profile AllOrgsChannel -outputAnchorPeersUpdate ${SRC}/../channel-artifacts/Org1MSPanchors.tx -channelID ${CHANNEL_ID} -asOrg Org1MSP
${SRC}/bin/configtxgen -profile AllOrgsChannel -outputAnchorPeersUpdate ${SRC}/../channel-artifacts/Org2MSPanchors.tx -channelID ${CHANNEL_ID} -asOrg Org2MSP
${SRC}/bin/configtxgen -profile AllOrgsChannel -outputAnchorPeersUpdate ${SRC}/../channel-artifacts/Org3MSPanchors.tx -channelID ${CHANNEL_ID} -asOrg Org3MSP
${SRC}/bin/configtxgen -profile AllOrgsChannel -outputAnchorPeersUpdate ${SRC}/../channel-artifacts/Org4MSPanchors.tx -channelID ${CHANNEL_ID} -asOrg Org4MSP
${SRC}/bin/configtxgen -profile AllOrgsChannel -outputAnchorPeersUpdate ${SRC}/../channel-artifacts/Org5MSPanchors.tx -channelID ${CHANNEL_ID} -asOrg Org5MSP
${SRC}/bin/configtxgen -profile AllOrgsChannel -outputAnchorPeersUpdate ${SRC}/../channel-artifacts/Org6MSPanchors.tx -channelID ${CHANNEL_ID} -asOrg Org6MSP
${SRC}/bin/configtxgen -profile AllOrgsChannel -outputAnchorPeersUpdate ${SRC}/../channel-artifacts/Org7MSPanchors.tx -channelID ${CHANNEL_ID} -asOrg Org7MSP
${SRC}/bin/configtxgen -profile AllOrgsChannel -outputAnchorPeersUpdate ${SRC}/../channel-artifacts/Org8MSPanchors.tx -channelID ${CHANNEL_ID} -asOrg Org8MSP
${SRC}/bin/configtxgen -profile AllOrgsChannel -outputAnchorPeersUpdate ${SRC}/../channel-artifacts/Org9MSPanchors.tx -channelID ${CHANNEL_ID} -asOrg Org9MSP
