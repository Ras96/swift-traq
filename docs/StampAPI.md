# StampAPI

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMessageStamp**](StampAPI.md#addmessagestamp) | **POST** /messages/{messageId}/stamps/{stampId} | スタンプを押す
[**changeStampImage**](StampAPI.md#changestampimage) | **PUT** /stamps/{stampId}/image | スタンプ画像を変更
[**createStamp**](StampAPI.md#createstamp) | **POST** /stamps | スタンプを作成
[**createStampPalette**](StampAPI.md#createstamppalette) | **POST** /stamp-palettes | スタンプパレットを作成
[**deleteStamp**](StampAPI.md#deletestamp) | **DELETE** /stamps/{stampId} | スタンプを削除
[**deleteStampPalette**](StampAPI.md#deletestamppalette) | **DELETE** /stamp-palettes/{paletteId} | スタンプパレットを削除
[**editStamp**](StampAPI.md#editstamp) | **PATCH** /stamps/{stampId} | スタンプ情報を変更
[**editStampPalette**](StampAPI.md#editstamppalette) | **PATCH** /stamp-palettes/{paletteId} | スタンプパレットを編集
[**getMessageStamps**](StampAPI.md#getmessagestamps) | **GET** /messages/{messageId}/stamps | メッセージのスタンプリストを取得
[**getMyStampHistory**](StampAPI.md#getmystamphistory) | **GET** /users/me/stamp-history | スタンプ履歴を取得
[**getStamp**](StampAPI.md#getstamp) | **GET** /stamps/{stampId} | スタンプ情報を取得
[**getStampImage**](StampAPI.md#getstampimage) | **GET** /stamps/{stampId}/image | スタンプ画像を取得
[**getStampPalette**](StampAPI.md#getstamppalette) | **GET** /stamp-palettes/{paletteId} | スタンプパレットを取得
[**getStampPalettes**](StampAPI.md#getstamppalettes) | **GET** /stamp-palettes | スタンプパレットのリストを取得
[**getStampStats**](StampAPI.md#getstampstats) | **GET** /stamps/{stampId}/stats | スタンプ統計情報を取得
[**getStamps**](StampAPI.md#getstamps) | **GET** /stamps | スタンプリストを取得
[**removeMessageStamp**](StampAPI.md#removemessagestamp) | **DELETE** /messages/{messageId}/stamps/{stampId} | スタンプを消す


# **addMessageStamp**
```swift
    open class func addMessageStamp(messageId: UUID, stampId: UUID, postMessageStampRequest: PostMessageStampRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

スタンプを押す

指定したメッセージに指定したスタンプを押します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let messageId = 987 // UUID | メッセージUUID
let stampId = 987 // UUID | スタンプUUID
let postMessageStampRequest = PostMessageStampRequest(count: 123) // PostMessageStampRequest |  (optional)

// スタンプを押す
StampAPI.addMessageStamp(messageId: messageId, stampId: stampId, postMessageStampRequest: postMessageStampRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **UUID** | メッセージUUID | 
 **stampId** | **UUID** | スタンプUUID | 
 **postMessageStampRequest** | [**PostMessageStampRequest**](PostMessageStampRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **changeStampImage**
```swift
    open class func changeStampImage(stampId: UUID, file: URL, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

スタンプ画像を変更

指定したスタンプの画像を変更します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let stampId = 987 // UUID | スタンプUUID
let file = URL(string: "https://example.com")! // URL | スタンプ画像(1MBまでのpng, jpeg, gif)

// スタンプ画像を変更
StampAPI.changeStampImage(stampId: stampId, file: file) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stampId** | **UUID** | スタンプUUID | 
 **file** | **URL** | スタンプ画像(1MBまでのpng, jpeg, gif) | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createStamp**
```swift
    open class func createStamp(name: String, file: URL, completion: @escaping (_ data: Stamp?, _ error: Error?) -> Void)
```

スタンプを作成

スタンプを新規作成します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let name = "name_example" // String | スタンプ名
let file = URL(string: "https://example.com")! // URL | スタンプ画像(1MBまでのpng, jpeg, gif)

// スタンプを作成
StampAPI.createStamp(name: name, file: file) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | スタンプ名 | 
 **file** | **URL** | スタンプ画像(1MBまでのpng, jpeg, gif) | 

### Return type

[**Stamp**](Stamp.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createStampPalette**
```swift
    open class func createStampPalette(postStampPaletteRequest: PostStampPaletteRequest? = nil, completion: @escaping (_ data: StampPalette?, _ error: Error?) -> Void)
```

スタンプパレットを作成

スタンプパレットを作成します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let postStampPaletteRequest = PostStampPaletteRequest(stamps: [123], name: "name_example", description: "description_example") // PostStampPaletteRequest |  (optional)

// スタンプパレットを作成
StampAPI.createStampPalette(postStampPaletteRequest: postStampPaletteRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postStampPaletteRequest** | [**PostStampPaletteRequest**](PostStampPaletteRequest.md) |  | [optional] 

### Return type

[**StampPalette**](StampPalette.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteStamp**
```swift
    open class func deleteStamp(stampId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

スタンプを削除

指定したスタンプを削除します。 対象のスタンプの削除権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let stampId = 987 // UUID | スタンプUUID

// スタンプを削除
StampAPI.deleteStamp(stampId: stampId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stampId** | **UUID** | スタンプUUID | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteStampPalette**
```swift
    open class func deleteStampPalette(paletteId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

スタンプパレットを削除

指定したスタンプパレットを削除します。 対象のスタンプパレットの管理権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let paletteId = 987 // UUID | スタンプパレットUUID

// スタンプパレットを削除
StampAPI.deleteStampPalette(paletteId: paletteId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paletteId** | **UUID** | スタンプパレットUUID | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editStamp**
```swift
    open class func editStamp(stampId: UUID, patchStampRequest: PatchStampRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

スタンプ情報を変更

指定したスタンプの情報を変更します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let stampId = 987 // UUID | スタンプUUID
let patchStampRequest = PatchStampRequest(name: "name_example", creatorId: 123) // PatchStampRequest |  (optional)

// スタンプ情報を変更
StampAPI.editStamp(stampId: stampId, patchStampRequest: patchStampRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stampId** | **UUID** | スタンプUUID | 
 **patchStampRequest** | [**PatchStampRequest**](PatchStampRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editStampPalette**
```swift
    open class func editStampPalette(paletteId: UUID, patchStampPaletteRequest: PatchStampPaletteRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

スタンプパレットを編集

指定したスタンプパレットを編集します。 リクエストのスタンプの配列の順番は保存されて変更されます。 対象のスタンプパレットの管理権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let paletteId = 987 // UUID | スタンプパレットUUID
let patchStampPaletteRequest = PatchStampPaletteRequest(name: "name_example", description: "description_example", stamps: [123]) // PatchStampPaletteRequest |  (optional)

// スタンプパレットを編集
StampAPI.editStampPalette(paletteId: paletteId, patchStampPaletteRequest: patchStampPaletteRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paletteId** | **UUID** | スタンプパレットUUID | 
 **patchStampPaletteRequest** | [**PatchStampPaletteRequest**](PatchStampPaletteRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessageStamps**
```swift
    open class func getMessageStamps(messageId: UUID, completion: @escaping (_ data: [MessageStamp]?, _ error: Error?) -> Void)
```

メッセージのスタンプリストを取得

指定したメッセージに押されているスタンプのリストを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let messageId = 987 // UUID | メッセージUUID

// メッセージのスタンプリストを取得
StampAPI.getMessageStamps(messageId: messageId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **UUID** | メッセージUUID | 

### Return type

[**[MessageStamp]**](MessageStamp.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyStampHistory**
```swift
    open class func getMyStampHistory(limit: Int? = nil, completion: @escaping (_ data: [StampHistoryEntry]?, _ error: Error?) -> Void)
```

スタンプ履歴を取得

自分のスタンプ履歴を最大100件まで取得します。 結果は降順で返されます。  このAPIが返すスタンプ履歴は厳密な履歴ではありません。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let limit = 987 // Int | 件数 (optional) (default to 100)

// スタンプ履歴を取得
StampAPI.getMyStampHistory(limit: limit) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Int** | 件数 | [optional] [default to 100]

### Return type

[**[StampHistoryEntry]**](StampHistoryEntry.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStamp**
```swift
    open class func getStamp(stampId: UUID, completion: @escaping (_ data: Stamp?, _ error: Error?) -> Void)
```

スタンプ情報を取得

指定したスタンプの情報を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let stampId = 987 // UUID | スタンプUUID

// スタンプ情報を取得
StampAPI.getStamp(stampId: stampId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stampId** | **UUID** | スタンプUUID | 

### Return type

[**Stamp**](Stamp.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStampImage**
```swift
    open class func getStampImage(stampId: UUID, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

スタンプ画像を取得

指定したIDのスタンプ画像を返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let stampId = 987 // UUID | スタンプUUID

// スタンプ画像を取得
StampAPI.getStampImage(stampId: stampId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stampId** | **UUID** | スタンプUUID | 

### Return type

**URL**

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png, image/gif, image/jpeg

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStampPalette**
```swift
    open class func getStampPalette(paletteId: UUID, completion: @escaping (_ data: StampPalette?, _ error: Error?) -> Void)
```

スタンプパレットを取得

指定したスタンプパレットの情報を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let paletteId = 987 // UUID | スタンプパレットUUID

// スタンプパレットを取得
StampAPI.getStampPalette(paletteId: paletteId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paletteId** | **UUID** | スタンプパレットUUID | 

### Return type

[**StampPalette**](StampPalette.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStampPalettes**
```swift
    open class func getStampPalettes(completion: @escaping (_ data: [StampPalette]?, _ error: Error?) -> Void)
```

スタンプパレットのリストを取得

自身が所有しているスタンプパレットのリストを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq


// スタンプパレットのリストを取得
StampAPI.getStampPalettes() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[StampPalette]**](StampPalette.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStampStats**
```swift
    open class func getStampStats(stampId: UUID, completion: @escaping (_ data: StampStats?, _ error: Error?) -> Void)
```

スタンプ統計情報を取得

指定したスタンプの統計情報を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let stampId = 987 // UUID | スタンプUUID

// スタンプ統計情報を取得
StampAPI.getStampStats(stampId: stampId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stampId** | **UUID** | スタンプUUID | 

### Return type

[**StampStats**](StampStats.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStamps**
```swift
    open class func getStamps(includeUnicode: Bool? = nil, type: ModelType_getStamps? = nil, completion: @escaping (_ data: [StampWithThumbnail]?, _ error: Error?) -> Void)
```

スタンプリストを取得

スタンプのリストを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let includeUnicode = true // Bool | Unicode絵文字を含ませるかどうか Deprecated: typeクエリを指定しなければ全てのスタンプを取得できるため、そちらを利用してください  (optional) (default to true)
let type = "type_example" // String | 取得するスタンプの種類 (optional)

// スタンプリストを取得
StampAPI.getStamps(includeUnicode: includeUnicode, type: type) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **includeUnicode** | **Bool** | Unicode絵文字を含ませるかどうか Deprecated: typeクエリを指定しなければ全てのスタンプを取得できるため、そちらを利用してください  | [optional] [default to true]
 **type** | **String** | 取得するスタンプの種類 | [optional] 

### Return type

[**[StampWithThumbnail]**](StampWithThumbnail.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeMessageStamp**
```swift
    open class func removeMessageStamp(messageId: UUID, stampId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

スタンプを消す

指定したメッセージから指定した自身が押したスタンプを削除します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let messageId = 987 // UUID | メッセージUUID
let stampId = 987 // UUID | スタンプUUID

// スタンプを消す
StampAPI.removeMessageStamp(messageId: messageId, stampId: stampId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **UUID** | メッセージUUID | 
 **stampId** | **UUID** | スタンプUUID | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

