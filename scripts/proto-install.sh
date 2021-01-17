#!/usr/bin/env bash

PROTOBUF_VERSION=3.14.0
PROTOC_FILENAME=protoc-${PROTOBUF_VERSION}-linux-x86_64.zip
pushd /home/travis || exit
wget https://github.com/google/protobuf/releases/download/v${PROTOBUF_VERSION}/${PROTOC_FILENAME}
unzip "${PROTOC_FILENAME}"
bin/protoc --version
popd || exit