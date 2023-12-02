#!/bin/sh -eux

OPENAPI_GENERATOR_VERSION=$(cat .openapi-generator/VERSION)

# 前回ファイルを削除
cat .openapi-generator/FILES | xargs rm -f

# build
docker run --rm -v "${PWD}:/local" -u $(id -u) openapitools/openapi-generator-cli:v$OPENAPI_GENERATOR_VERSION generate \
  -i https://raw.githubusercontent.com/traPtitech/traQ/master/docs/v3-api.yaml \
  -g swift5 \
  -c /local/.openapi-generator.yml \
  -o /local
mv README.md client.md
mv README.md.bak README.md

# NOTE: enumの`-createdAt`と`createdAt`が共に`createdat`に変換されて衝突するため置換する
MESSAGEAPI_FILE=./Sources/Traq/APIs/MessageAPI.swift
sed -i.bak -e 's/createdat = "-createdAt"/createdatAsc = "-createdAt"/' $MESSAGEAPI_FILE
sed -i.bak -e 's/updatedat = "-updatedAt"/updatedatAsc = "-updatedAt"/' $MESSAGEAPI_FILE
rm ${MESSAGEAPI_FILE}.bak

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
