. ./variables.sh

docker exec cli /bin/bash -c "./scripts/channelConfigUpdate.sh createAnchorPeerUpdate 0 ${CHANNEL_ID}"
docker exec cli /bin/bash -c "./scripts/channelConfigUpdate.sh createAnchorPeerUpdate 1 ${CHANNEL_ID}"
docker exec cli /bin/bash -c "./scripts/channelConfigUpdate.sh createAnchorPeerUpdate 2 ${CHANNEL_ID}"
docker exec cli /bin/bash -c "./scripts/channelConfigUpdate.sh createAnchorPeerUpdate 3 ${CHANNEL_ID}"
docker exec cli /bin/bash -c "./scripts/channelConfigUpdate.sh createAnchorPeerUpdate 4 ${CHANNEL_ID}"
docker exec cli /bin/bash -c "./scripts/channelConfigUpdate.sh createAnchorPeerUpdate 5 ${CHANNEL_ID}"
docker exec cli /bin/bash -c "./scripts/channelConfigUpdate.sh createAnchorPeerUpdate 6 ${CHANNEL_ID}"
docker exec cli /bin/bash -c "./scripts/channelConfigUpdate.sh createAnchorPeerUpdate 7 ${CHANNEL_ID}"
docker exec cli /bin/bash -c "./scripts/channelConfigUpdate.sh createAnchorPeerUpdate 8 ${CHANNEL_ID}"
docker exec cli /bin/bash -c "./scripts/channelConfigUpdate.sh createAnchorPeerUpdate 9 ${CHANNEL_ID}"
