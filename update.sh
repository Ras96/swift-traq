#!/bin/sh

openapi-generator-cli generate -i https://raw.githubusercontent.com/traPtitech/traQ/master/docs/v3-api.yaml -g swift5

echo "Xcodeでエラーになっている箇所を修正してください"
