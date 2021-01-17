#!/usr/bin/env bash

pushd /home/travis || exit
wget https://github.com/google/protobuf/releases/download/v${PROTOBUF_VERSION}/${PROTOC_FILENAME}
unzip "${PROTOC_FILENAME}"
bin/protoc --version
popd || exit