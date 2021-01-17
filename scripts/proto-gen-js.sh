#!/usr/bin/env bash

#Start JS/TS file generation

cp proto/ProtoWsHeader.proto js/ProtoWsHeader.proto

cd js || exit

npm install ts-protoc-gen

PROTOC_GEN_TS_PATH="./node_modules/.bin/protoc-gen-ts"

OUT_DIR="./"

protoc \
    --plugin="protoc-gen-ts=${PROTOC_GEN_TS_PATH}" \
    --js_out="import_style=commonjs,binary:${OUT_DIR}" \
    --ts_out="${OUT_DIR}" \
    ProtoWsHeader.proto

rm -rf ProtoWsHeader.proto

cd ..

#End JS/TS file generation