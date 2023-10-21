#!/bin/sh

OPENAPI_GENERATOR_VERSION=$(cat .openapi-generator/VERSION)

# 前回ファイルを削除
cat .openapi-generator/FILES | xargs rm -f

# openapi-generatorをダウンロード
NEEDS_FETCH='1'
if [ -e 'openapi-generator-cli.jar' ]; then
  VERSION_DOWNLOADED=`java -jar openapi-generator-cli.jar version`
  NEEDS_FETCH=`test $OPENAPI_GENERATOR_VERSION != $VERSION_DOWNLOADED && echo '1' || echo '0'`
fi
if [ $NEEDS_FETCH = '1' ]; then
  wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/$OPENAPI_GENERATOR_VERSION/openapi-generator-cli-$OPENAPI_GENERATOR_VERSION.jar -O openapi-generator-cli.jar
fi

# コード生成
java -jar openapi-generator-cli.jar generate \
  -g swift5 \
  -i https://raw.githubusercontent.com/traPtitech/traQ/master/docs/v3-api.yaml \
  -c ./.openapi-generator.yml

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
