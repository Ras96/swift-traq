# ClipAPI

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clipMessage**](ClipAPI.md#clipmessage) | **POST** /clip-folders/{folderId}/messages | メッセージをクリップフォルダに追加
[**createClipFolder**](ClipAPI.md#createclipfolder) | **POST** /clip-folders | クリップフォルダを作成
[**deleteClipFolder**](ClipAPI.md#deleteclipfolder) | **DELETE** /clip-folders/{folderId} | クリップフォルダを削除
[**editClipFolder**](ClipAPI.md#editclipfolder) | **PATCH** /clip-folders/{folderId} | クリップフォルダ情報を編集
[**getClipFolder**](ClipAPI.md#getclipfolder) | **GET** /clip-folders/{folderId} | クリップフォルダ情報を取得
[**getClipFolders**](ClipAPI.md#getclipfolders) | **GET** /clip-folders | クリップフォルダのリストを取得
[**getClips**](ClipAPI.md#getclips) | **GET** /clip-folders/{folderId}/messages | フォルダ内のクリップのリストを取得
[**getMessageClips_0**](ClipAPI.md#getmessageclips_0) | **GET** /messages/{messageId}/clips | 自分のクリップを取得
[**unclipMessage**](ClipAPI.md#unclipmessage) | **DELETE** /clip-folders/{folderId}/messages/{messageId} | メッセージをクリップフォルダから除外


# **clipMessage**
```swift
    open class func clipMessage(folderId: UUID, postClipFolderMessageRequest: PostClipFolderMessageRequest? = nil, completion: @escaping (_ data: ClippedMessage?, _ error: Error?) -> Void)
```

メッセージをクリップフォルダに追加

指定したメッセージを指定したクリップフォルダに追加します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let folderId = 987 // UUID | クリップフォルダUUID
let postClipFolderMessageRequest = PostClipFolderMessageRequest(messageId: 123) // PostClipFolderMessageRequest |  (optional)

// メッセージをクリップフォルダに追加
ClipAPI.clipMessage(folderId: folderId, postClipFolderMessageRequest: postClipFolderMessageRequest) { (response, error) in
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
 **folderId** | **UUID** | クリップフォルダUUID | 
 **postClipFolderMessageRequest** | [**PostClipFolderMessageRequest**](PostClipFolderMessageRequest.md) |  | [optional] 

### Return type

[**ClippedMessage**](ClippedMessage.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createClipFolder**
```swift
    open class func createClipFolder(postClipFolderRequest: PostClipFolderRequest? = nil, completion: @escaping (_ data: ClipFolder?, _ error: Error?) -> Void)
```

クリップフォルダを作成

クリップフォルダを作成します。 既にあるフォルダと同名のフォルダを作成することは可能です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let postClipFolderRequest = PostClipFolderRequest(name: "name_example", description: "description_example") // PostClipFolderRequest |  (optional)

// クリップフォルダを作成
ClipAPI.createClipFolder(postClipFolderRequest: postClipFolderRequest) { (response, error) in
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
 **postClipFolderRequest** | [**PostClipFolderRequest**](PostClipFolderRequest.md) |  | [optional] 

### Return type

[**ClipFolder**](ClipFolder.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteClipFolder**
```swift
    open class func deleteClipFolder(folderId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

クリップフォルダを削除

指定したクリップフォルダを削除します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let folderId = 987 // UUID | クリップフォルダUUID

// クリップフォルダを削除
ClipAPI.deleteClipFolder(folderId: folderId) { (response, error) in
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
 **folderId** | **UUID** | クリップフォルダUUID | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editClipFolder**
```swift
    open class func editClipFolder(folderId: UUID, patchClipFolderRequest: PatchClipFolderRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

クリップフォルダ情報を編集

指定したクリップフォルダの情報を編集します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let folderId = 987 // UUID | クリップフォルダUUID
let patchClipFolderRequest = PatchClipFolderRequest(name: "name_example", description: "description_example") // PatchClipFolderRequest |  (optional)

// クリップフォルダ情報を編集
ClipAPI.editClipFolder(folderId: folderId, patchClipFolderRequest: patchClipFolderRequest) { (response, error) in
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
 **folderId** | **UUID** | クリップフォルダUUID | 
 **patchClipFolderRequest** | [**PatchClipFolderRequest**](PatchClipFolderRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClipFolder**
```swift
    open class func getClipFolder(folderId: UUID, completion: @escaping (_ data: ClipFolder?, _ error: Error?) -> Void)
```

クリップフォルダ情報を取得

指定したクリップフォルダの情報を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let folderId = 987 // UUID | クリップフォルダUUID

// クリップフォルダ情報を取得
ClipAPI.getClipFolder(folderId: folderId) { (response, error) in
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
 **folderId** | **UUID** | クリップフォルダUUID | 

### Return type

[**ClipFolder**](ClipFolder.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClipFolders**
```swift
    open class func getClipFolders(completion: @escaping (_ data: [ClipFolder]?, _ error: Error?) -> Void)
```

クリップフォルダのリストを取得

自身が所有するクリップフォルダのリストを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq


// クリップフォルダのリストを取得
ClipAPI.getClipFolders() { (response, error) in
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

[**[ClipFolder]**](ClipFolder.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClips**
```swift
    open class func getClips(folderId: UUID, limit: Int? = nil, offset: Int? = nil, order: Order_getClips? = nil, completion: @escaping (_ data: [ClippedMessage]?, _ error: Error?) -> Void)
```

フォルダ内のクリップのリストを取得

指定したフォルダ内のクリップのリストを取得します。 `order`を指定しない場合、クリップした日時の新しい順で返されます。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let folderId = 987 // UUID | クリップフォルダUUID
let limit = 987 // Int | 取得する件数 (optional)
let offset = 987 // Int | 取得するオフセット (optional) (default to 0)
let order = "order_example" // String | 昇順か降順か (optional) (default to .desc)

// フォルダ内のクリップのリストを取得
ClipAPI.getClips(folderId: folderId, limit: limit, offset: offset, order: order) { (response, error) in
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
 **folderId** | **UUID** | クリップフォルダUUID | 
 **limit** | **Int** | 取得する件数 | [optional] 
 **offset** | **Int** | 取得するオフセット | [optional] [default to 0]
 **order** | **String** | 昇順か降順か | [optional] [default to .desc]

### Return type

[**[ClippedMessage]**](ClippedMessage.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessageClips_0**
```swift
    open class func getMessageClips_0(messageId: UUID, completion: @escaping (_ data: [MessageClip]?, _ error: Error?) -> Void)
```

自分のクリップを取得

対象のメッセージの自分のクリップの一覧を返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let messageId = 987 // UUID | メッセージUUID

// 自分のクリップを取得
ClipAPI.getMessageClips_0(messageId: messageId) { (response, error) in
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

[**[MessageClip]**](MessageClip.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unclipMessage**
```swift
    open class func unclipMessage(folderId: UUID, messageId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

メッセージをクリップフォルダから除外

指定したフォルダから指定したメッセージのクリップを除外します。 既に外されているメッセージを指定した場合は204を返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let folderId = 987 // UUID | クリップフォルダUUID
let messageId = 987 // UUID | メッセージUUID

// メッセージをクリップフォルダから除外
ClipAPI.unclipMessage(folderId: folderId, messageId: messageId) { (response, error) in
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
 **folderId** | **UUID** | クリップフォルダUUID | 
 **messageId** | **UUID** | メッセージUUID | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

