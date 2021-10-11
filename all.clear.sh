SRC=$(dirname "$0")
export FABRIC_CFG_PATH=$PWD/${SRC}
. ${SRC}/variables.sh

${SRC}/artifacts.crypto/all.crypto.clear.sh
rm -rf ${SRC}/scripts
rm -rf ${SRC}/chaincode/fabcar/go/vendor

