#!/usr/bin/env bash

current_version="$(jq -r '.version' version.json)"

echo "Deploy version: $current_version"

jq '.version = "'"${current_version}"'"' js/package.json > tmp.$$.json && mv tmp.$$.json js/package.json