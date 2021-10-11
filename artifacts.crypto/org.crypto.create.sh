SRC=$(dirname "$0")
export FABRIC_CFG_PATH=$PWD/${SRC}
. ${SRC}/../variables.sh

mkdir -p ${SRC}/../channel-artifacts

${SRC}/bin/cryptogen generate --output="${SRC}/../crypto-config" --config=${SRC}/crypto-config.yaml

${SRC}/bin/configtxgen -profile SampleMultiNodeEtcdRaft -outputBlock ${SRC}/../channel-artifacts/genesis.block -channelID ${SYS_CHANNEL}
