#!/bin/sh -eu

# 前回ファイルを削除
cat .openapi-generator/FILES | xargs rm -f

# build
docker run --rm -v "${PWD}:/local" -u $(id -u) openapitools/openapi-generator-cli:latest-release generate \
  -i https://raw.githubusercontent.com/traPtitech/traQ/master/docs/v3-api.yaml \
  -g swift5 \
  -c /local/.openapi-generator.yml \
  -o /local

# SwiftFormatのルールを追加
echo '--enumnamespaces structs-only' >> .swiftformat

# SwiftFormatをPackage.swiftに追加し実行
echo '
// devdependencies
package.dependencies.append(
  .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.52.8")
)
' >> ./Package.swift
swift run swiftformat --config .swiftformat .

# 無視するファイルを追加
echo "Packages/" >> .gitignore
echo "openapi-generator-cli.jar" >> .gitignore
