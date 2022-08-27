#!/bin/sh

wget -nv -P /tmp https://raw.githubusercontent.com/traPtitech/traQ/master/docs/v3-api.yaml

openapi-generator-cli generate \
  -g swift5 \
  -i /tmp/v3-api.yaml \
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

# Packages/をignore
echo "Packages/" >> .gitignore

swift run swiftformat --config .swiftformat .
