#!/usr/bin/env bash

pbjs proto/ProtoWsHeader.proto --ts js/index.d.ts --es5 js/index.js

cp README.md js/README.md

scripts/version.sh