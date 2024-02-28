#!/bin/bash

set -ex

# Set current storage location to current directory.
export STORAGE_LOCATION=$(pwd)/docker-storage
mkdir -p $STORAGE_LOCATION
touch "$STORAGE_LOCATION/.env"
docker run -d -p 3001:3001 \
--cap-add SYS_ADMIN \
-v ${STORAGE_LOCATION}:/app/server/storage \
-v ${STORAGE_LOCATION}/.env:/app/server/.env \
-e STORAGE_DIR="/app/server/storage" \
mintplexlabs/anythingllm@sha256:aa4e2981da035bd311bfdaaaeebc89a7fa3020676ae9a23eafa12a357b14dff5 # 2024/01/29 version
