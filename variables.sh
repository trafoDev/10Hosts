export SYS_CHANNEL=systemchannel
export CHANNEL_ID=fabcarchannel 
export CC_NAME=fabcar 
export SEQUENCE_NB=1
export VERSION_NB=1
export NETWORK_NAME=hlf_test_net

#export ENDORSEMENT_POLICY="--signature-policy OR('Org0MSP.peer','Org1MSP.peer','Org2MSP.peer','Org3MSP.peer','Org4MSP.peer','Org5MSP.peer','Org6MSP.peer','Org7MSP.peer','Org8MSP.peer','Org9MSP.peer')"
export ENDORSEMENT_POLICY="--signature-policy OutOf(1,'Org0MSP.peer','Org1MSP.peer','Org2MSP.peer','Org3MSP.peer','Org4MSP.peer','Org5MSP.peer','Org6MSP.peer','Org7MSP.peer','Org8MSP.peer','Org9MSP.peer')"

