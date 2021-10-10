# If not done before
pushd ./chaincode/fabcar/go
GO111MODULE=on go mod vendor
popd


# packaging
docker exec cli peer lifecycle chaincode package fabcar.tar.gz --path github.com/chaincode/fabcar/go --label fabcar_1