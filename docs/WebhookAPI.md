# WebhookAPI

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changeWebhookIcon**](WebhookAPI.md#changewebhookicon) | **PUT** /webhooks/{webhookId}/icon | Webhookのアイコンを変更
[**createWebhook**](WebhookAPI.md#createwebhook) | **POST** /webhooks | Webhookを新規作成
[**deleteWebhook**](WebhookAPI.md#deletewebhook) | **DELETE** /webhooks/{webhookId} | Webhookを削除
[**editWebhook**](WebhookAPI.md#editwebhook) | **PATCH** /webhooks/{webhookId} | Webhook情報を変更
[**getWebhook**](WebhookAPI.md#getwebhook) | **GET** /webhooks/{webhookId} | Webhook情報を取得
[**getWebhookIcon**](WebhookAPI.md#getwebhookicon) | **GET** /webhooks/{webhookId}/icon | Webhookのアイコンを取得
[**getWebhookMessages**](WebhookAPI.md#getwebhookmessages) | **GET** /webhooks/{webhookId}/messages | Webhookの投稿メッセージのリストを取得
[**getWebhooks**](WebhookAPI.md#getwebhooks) | **GET** /webhooks | Webhook情報のリストを取得します
[**postWebhook**](WebhookAPI.md#postwebhook) | **POST** /webhooks/{webhookId} | Webhookを送信


# **changeWebhookIcon**
```swift
    open class func changeWebhookIcon(webhookId: UUID, file: URL, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Webhookのアイコンを変更

指定したWebhookのアイコン画像を変更します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let webhookId = 987 // UUID | WebhookUUID
let file = URL(string: "https://example.com")! // URL | アイコン画像(2MBまでのpng, jpeg, gif)

// Webhookのアイコンを変更
WebhookAPI.changeWebhookIcon(webhookId: webhookId, file: file) { (response, error) in
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
 **webhookId** | **UUID** | WebhookUUID | 
 **file** | **URL** | アイコン画像(2MBまでのpng, jpeg, gif) | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWebhook**
```swift
    open class func createWebhook(postWebhookRequest: PostWebhookRequest? = nil, completion: @escaping (_ data: Webhook?, _ error: Error?) -> Void)
```

Webhookを新規作成

Webhookを新規作成します。 `secret`が空文字の場合、insecureウェブフックが作成されます。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let postWebhookRequest = PostWebhookRequest(name: "name_example", description: "description_example", channelId: 123, secret: "secret_example") // PostWebhookRequest |  (optional)

// Webhookを新規作成
WebhookAPI.createWebhook(postWebhookRequest: postWebhookRequest) { (response, error) in
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
 **postWebhookRequest** | [**PostWebhookRequest**](PostWebhookRequest.md) |  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWebhook**
```swift
    open class func deleteWebhook(webhookId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Webhookを削除

指定したWebhookを削除します。 Webhookによって投稿されたメッセージは削除されません。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let webhookId = 987 // UUID | WebhookUUID

// Webhookを削除
WebhookAPI.deleteWebhook(webhookId: webhookId) { (response, error) in
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
 **webhookId** | **UUID** | WebhookUUID | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editWebhook**
```swift
    open class func editWebhook(webhookId: UUID, patchWebhookRequest: PatchWebhookRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Webhook情報を変更

指定したWebhookの情報を変更します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let webhookId = 987 // UUID | WebhookUUID
let patchWebhookRequest = PatchWebhookRequest(name: "name_example", description: "description_example", channelId: 123, secret: "secret_example", ownerId: 123) // PatchWebhookRequest |  (optional)

// Webhook情報を変更
WebhookAPI.editWebhook(webhookId: webhookId, patchWebhookRequest: patchWebhookRequest) { (response, error) in
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
 **webhookId** | **UUID** | WebhookUUID | 
 **patchWebhookRequest** | [**PatchWebhookRequest**](PatchWebhookRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebhook**
```swift
    open class func getWebhook(webhookId: UUID, completion: @escaping (_ data: Webhook?, _ error: Error?) -> Void)
```

Webhook情報を取得

指定したWebhookの詳細を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let webhookId = 987 // UUID | WebhookUUID

// Webhook情報を取得
WebhookAPI.getWebhook(webhookId: webhookId) { (response, error) in
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
 **webhookId** | **UUID** | WebhookUUID | 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebhookIcon**
```swift
    open class func getWebhookIcon(webhookId: UUID, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Webhookのアイコンを取得

指定したWebhookのアイコン画像を取得します

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let webhookId = 987 // UUID | WebhookUUID

// Webhookのアイコンを取得
WebhookAPI.getWebhookIcon(webhookId: webhookId) { (response, error) in
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
 **webhookId** | **UUID** | WebhookUUID | 

### Return type

**URL**

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/jpeg, image/gif, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebhookMessages**
```swift
    open class func getWebhookMessages(webhookId: UUID, limit: Int? = nil, offset: Int? = nil, since: Date? = nil, until: Date? = nil, inclusive: Bool? = nil, order: Order_getWebhookMessages? = nil, completion: @escaping (_ data: [Message]?, _ error: Error?) -> Void)
```

Webhookの投稿メッセージのリストを取得

指定されたWebhookが投稿したメッセージのリストを返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let webhookId = 987 // UUID | WebhookUUID
let limit = 987 // Int | 取得する件数 (optional)
let offset = 987 // Int | 取得するオフセット (optional) (default to 0)
let since = Date() // Date | 取得する時間範囲の開始日時 (optional) (default to Date(timeIntervalSince1970: -62167219200000000.0 / 1_000_000))
let until = Date() // Date | 取得する時間範囲の終了日時 (optional)
let inclusive = true // Bool | 範囲の端を含めるかどうか (optional) (default to false)
let order = "order_example" // String | 昇順か降順か (optional) (default to .desc)

// Webhookの投稿メッセージのリストを取得
WebhookAPI.getWebhookMessages(webhookId: webhookId, limit: limit, offset: offset, since: since, until: until, inclusive: inclusive, order: order) { (response, error) in
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
 **webhookId** | **UUID** | WebhookUUID | 
 **limit** | **Int** | 取得する件数 | [optional] 
 **offset** | **Int** | 取得するオフセット | [optional] [default to 0]
 **since** | **Date** | 取得する時間範囲の開始日時 | [optional] [default to Date(timeIntervalSince1970: -62167219200000000.0 / 1_000_000)]
 **until** | **Date** | 取得する時間範囲の終了日時 | [optional] 
 **inclusive** | **Bool** | 範囲の端を含めるかどうか | [optional] [default to false]
 **order** | **String** | 昇順か降順か | [optional] [default to .desc]

### Return type

[**[Message]**](Message.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWebhooks**
```swift
    open class func getWebhooks(all: Bool? = nil, completion: @escaping (_ data: [Webhook]?, _ error: Error?) -> Void)
```

Webhook情報のリストを取得します

Webhookのリストを取得します。 allがtrueで無い場合は、自分がオーナーのWebhookのリストを返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let all = true // Bool | 全てのWebhookを取得します。権限が必要です。 (optional) (default to false)

// Webhook情報のリストを取得します
WebhookAPI.getWebhooks(all: all) { (response, error) in
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
 **all** | **Bool** | 全てのWebhookを取得します。権限が必要です。 | [optional] [default to false]

### Return type

[**[Webhook]**](Webhook.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postWebhook**
```swift
    open class func postWebhook(webhookId: UUID, xTRAQSignature: String? = nil, xTRAQChannelId: String? = nil, embed: Int? = nil, body: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Webhookを送信

Webhookにメッセージを投稿します。 secureなウェブフックに対しては`X-TRAQ-Signature`ヘッダーが必須です。 アーカイブされているチャンネルには投稿できません。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let webhookId = 987 // UUID | WebhookUUID
let xTRAQSignature = "xTRAQSignature_example" // String | リクエストボディシグネチャ(Secretが設定されている場合は必須) (optional)
let xTRAQChannelId = "xTRAQChannelId_example" // String | 投稿先のチャンネルID(変更する場合) (optional)
let embed = 987 // Int | メンション・チャンネルリンクを自動埋め込みする場合に1を指定する (optional) (default to 0)
let body = "body_example" // String |  (optional)

// Webhookを送信
WebhookAPI.postWebhook(webhookId: webhookId, xTRAQSignature: xTRAQSignature, xTRAQChannelId: xTRAQChannelId, embed: embed, body: body) { (response, error) in
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
 **webhookId** | **UUID** | WebhookUUID | 
 **xTRAQSignature** | **String** | リクエストボディシグネチャ(Secretが設定されている場合は必須) | [optional] 
 **xTRAQChannelId** | **String** | 投稿先のチャンネルID(変更する場合) | [optional] 
 **embed** | **Int** | メンション・チャンネルリンクを自動埋め込みする場合に1を指定する | [optional] [default to 0]
 **body** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

