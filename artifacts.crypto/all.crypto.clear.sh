SRC=$(dirname "$0")
export FABRIC_CFG_PATH=$PWD/${SRC}
. ${SRC}/../variables.sh

rm -rf ${SRC}/../channel-artifacts
rm -rf ${SRC}/../crypto-config

