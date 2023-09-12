#!/bin/sh

set -e

/usr/local/bin/oss-chain-bench $(echo "$@" | tr -d '\r') -o /tmp/report.json

echo "::set-output name=oss-chain-bench-result::$(cat /tmp/report.json | jq --compact-output)"
