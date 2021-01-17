#!/usr/bin/env bash

chmod +x ./scripts/proto-gen-js.sh && ./scripts/proto-gen-js.sh

cp README.md js/README.md

chmod +x ./scripts/version.sh && ./scripts/version.sh