# FileAPI

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteFile**](FileAPI.md#deletefile) | **DELETE** /files/{fileId} | ファイルを削除
[**getFile**](FileAPI.md#getfile) | **GET** /files/{fileId} | ファイルをダウンロード
[**getFileMeta**](FileAPI.md#getfilemeta) | **GET** /files/{fileId}/meta | ファイルメタを取得
[**getFiles**](FileAPI.md#getfiles) | **GET** /files | ファイルメタのリストを取得
[**getThumbnailImage**](FileAPI.md#getthumbnailimage) | **GET** /files/{fileId}/thumbnail | サムネイル画像を取得
[**postFile**](FileAPI.md#postfile) | **POST** /files | ファイルをアップロード


# **deleteFile**
```swift
    open class func deleteFile(fileId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

ファイルを削除

指定したファイルを削除します。 指定したファイルの削除権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let fileId = 987 // UUID | ファイルUUID

// ファイルを削除
FileAPI.deleteFile(fileId: fileId) { (response, error) in
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
 **fileId** | **UUID** | ファイルUUID | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFile**
```swift
    open class func getFile(fileId: UUID, dl: Int? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

ファイルをダウンロード

指定したファイル本体を取得します。 指定したファイルへのアクセス権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let fileId = 987 // UUID | ファイルUUID
let dl = 987 // Int | 1を指定するとレスポンスにContent-Dispositionヘッダーが付与されます (optional)

// ファイルをダウンロード
FileAPI.getFile(fileId: fileId, dl: dl) { (response, error) in
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
 **fileId** | **UUID** | ファイルUUID | 
 **dl** | **Int** | 1を指定するとレスポンスにContent-Dispositionヘッダーが付与されます | [optional] 

### Return type

**URL**

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFileMeta**
```swift
    open class func getFileMeta(fileId: UUID, completion: @escaping (_ data: FileInfo?, _ error: Error?) -> Void)
```

ファイルメタを取得

指定したファイルのメタ情報を取得します。 指定したファイルへのアクセス権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let fileId = 987 // UUID | ファイルUUID

// ファイルメタを取得
FileAPI.getFileMeta(fileId: fileId) { (response, error) in
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
 **fileId** | **UUID** | ファイルUUID | 

### Return type

[**FileInfo**](FileInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFiles**
```swift
    open class func getFiles(channelId: UUID? = nil, limit: Int? = nil, offset: Int? = nil, since: Date? = nil, until: Date? = nil, inclusive: Bool? = nil, order: Order_getFiles? = nil, mine: Bool? = nil, completion: @escaping (_ data: [FileInfo]?, _ error: Error?) -> Void)
```

ファイルメタのリストを取得

指定したクエリでファイルメタのリストを取得します。 クエリパラメータ`channelId`, `mine`の少なくともいずれかが必須です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let channelId = 987 // UUID | アップロード先チャンネルUUID (optional)
let limit = 987 // Int | 取得する件数 (optional)
let offset = 987 // Int | 取得するオフセット (optional) (default to 0)
let since = Date() // Date | 取得する時間範囲の開始日時 (optional) (default to Date(timeIntervalSince1970: -62167219200000000.0 / 1_000_000))
let until = Date() // Date | 取得する時間範囲の終了日時 (optional)
let inclusive = true // Bool | 範囲の端を含めるかどうか (optional) (default to false)
let order = "order_example" // String | 昇順か降順か (optional) (default to .desc)
let mine = true // Bool | アップロード者が自分のファイルのみを取得するか (optional) (default to false)

// ファイルメタのリストを取得
FileAPI.getFiles(channelId: channelId, limit: limit, offset: offset, since: since, until: until, inclusive: inclusive, order: order, mine: mine) { (response, error) in
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
 **channelId** | **UUID** | アップロード先チャンネルUUID | [optional] 
 **limit** | **Int** | 取得する件数 | [optional] 
 **offset** | **Int** | 取得するオフセット | [optional] [default to 0]
 **since** | **Date** | 取得する時間範囲の開始日時 | [optional] [default to Date(timeIntervalSince1970: -62167219200000000.0 / 1_000_000)]
 **until** | **Date** | 取得する時間範囲の終了日時 | [optional] 
 **inclusive** | **Bool** | 範囲の端を含めるかどうか | [optional] [default to false]
 **order** | **String** | 昇順か降順か | [optional] [default to .desc]
 **mine** | **Bool** | アップロード者が自分のファイルのみを取得するか | [optional] [default to false]

### Return type

[**[FileInfo]**](FileInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThumbnailImage**
```swift
    open class func getThumbnailImage(fileId: UUID, type: ThumbnailType? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

サムネイル画像を取得

指定したファイルのサムネイル画像を取得します。 指定したファイルへのアクセス権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let fileId = 987 // UUID | ファイルUUID
let type = ThumbnailType() // ThumbnailType | 取得するサムネイルのタイプ (optional)

// サムネイル画像を取得
FileAPI.getThumbnailImage(fileId: fileId, type: type) { (response, error) in
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
 **fileId** | **UUID** | ファイルUUID | 
 **type** | [**ThumbnailType**](.md) | 取得するサムネイルのタイプ | [optional] 

### Return type

**URL**

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png, image/jpeg

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postFile**
```swift
    open class func postFile(file: URL, channelId: UUID, completion: @escaping (_ data: FileInfo?, _ error: Error?) -> Void)
```

ファイルをアップロード

指定したチャンネルにファイルをアップロードします。 アーカイブされているチャンネルにはアップロード出来ません。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let file = URL(string: "https://example.com")! // URL | ファイル本体
let channelId = 987 // UUID | アップロード先チャンネルUUID

// ファイルをアップロード
FileAPI.postFile(file: file, channelId: channelId) { (response, error) in
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
 **file** | **URL** | ファイル本体 | 
 **channelId** | **UUID** | アップロード先チャンネルUUID | 

### Return type

[**FileInfo**](FileInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

