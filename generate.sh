#!/bin/sh

OPENAPI_GENERATOR_VERSION=$(cat .openapi-generator/VERSION)

# remove old files
cat .openapi-generator/FILES | xargs rm -f

# fetch openapi-generator
NEEDS_FETCH='1'
if [ -e 'openapi-generator-cli.jar' ]; then
  VERSION_DOWNLOADED=`java -jar openapi-generator-cli.jar version`
  NEEDS_FETCH=`test $OPENAPI_GENERATOR_VERSION != $VERSION_DOWNLOADED && echo '1' || echo '0'`
fi
if [ $NEEDS_FETCH = '1' ]; then
  wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/$OPENAPI_GENERATOR_VERSION/openapi-generator-cli-$OPENAPI_GENERATOR_VERSION.jar -O openapi-generator-cli.jar
fi

java -jar openapi-generator-cli.jar generate \
  -g swift5 \
  -i https://raw.githubusercontent.com/traPtitech/traQ/master/docs/v3-api.yaml \
  -c ./.openapi-generator.yml

# NOTE: enumの`-createdAt`と`createdAt`が共に`createdat`に変換されて衝突するため置換する
MESSAGEAPI_FILE=./Traq/Classes/OpenAPIs/APIs/MessageAPI.swift
sed -i.bak -e 's/createdat = "-createdAt"/createdatAsc = "-createdAt"/' $MESSAGEAPI_FILE
sed -i.bak -e 's/updatedat = "-updatedAt"/updatedatAsc = "-updatedAt"/' $MESSAGEAPI_FILE
rm ${MESSAGEAPI_FILE}.bak

# SwiftFormatをPackage.swiftに追加
sed -i.bak -e '23i\
 .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.49.17"),' ./Package.swift
rm ./Package.swift.bak

# ignore files
echo "Packages/" >> .gitignore
echo "openapi-generator-cli.jar" >> .gitignore

swift run swiftformat --config .swiftformat .
