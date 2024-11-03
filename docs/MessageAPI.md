# MessageAPI

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMessageStamp**](MessageAPI.md#addmessagestamp) | **POST** /messages/{messageId}/stamps/{stampId} | スタンプを押す
[**createPin**](MessageAPI.md#createpin) | **POST** /messages/{messageId}/pin | ピン留めする
[**deleteMessage**](MessageAPI.md#deletemessage) | **DELETE** /messages/{messageId} | メッセージを削除
[**editMessage**](MessageAPI.md#editmessage) | **PUT** /messages/{messageId} | メッセージを編集
[**getDirectMessages**](MessageAPI.md#getdirectmessages) | **GET** /users/{userId}/messages | ダイレクトメッセージのリストを取得
[**getMessage**](MessageAPI.md#getmessage) | **GET** /messages/{messageId} | メッセージを取得
[**getMessageClips**](MessageAPI.md#getmessageclips) | **GET** /messages/{messageId}/clips | 自分のクリップを取得
[**getMessageStamps**](MessageAPI.md#getmessagestamps) | **GET** /messages/{messageId}/stamps | メッセージのスタンプリストを取得
[**getMessages_0**](MessageAPI.md#getmessages_0) | **GET** /channels/{channelId}/messages | チャンネルメッセージのリストを取得
[**getPin**](MessageAPI.md#getpin) | **GET** /messages/{messageId}/pin | ピン留めを取得
[**postDirectMessage**](MessageAPI.md#postdirectmessage) | **POST** /users/{userId}/messages | ダイレクトメッセージを送信
[**postMessage**](MessageAPI.md#postmessage) | **POST** /channels/{channelId}/messages | チャンネルにメッセージを投稿
[**removeMessageStamp**](MessageAPI.md#removemessagestamp) | **DELETE** /messages/{messageId}/stamps/{stampId} | スタンプを消す
[**removePin**](MessageAPI.md#removepin) | **DELETE** /messages/{messageId}/pin | ピン留めを外す
[**searchMessages**](MessageAPI.md#searchmessages) | **GET** /messages | メッセージを検索


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
MessageAPI.addMessageStamp(messageId: messageId, stampId: stampId, postMessageStampRequest: postMessageStampRequest) { (response, error) in
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

# **createPin**
```swift
    open class func createPin(messageId: UUID, completion: @escaping (_ data: MessagePin?, _ error: Error?) -> Void)
```

ピン留めする

指定したメッセージをピン留めします。 アーカイブされているチャンネルのメッセージ・存在しないメッセージ・チャンネル当たりの上限数を超えたメッセージのピン留めはできません。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let messageId = 987 // UUID | メッセージUUID

// ピン留めする
MessageAPI.createPin(messageId: messageId) { (response, error) in
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

[**MessagePin**](MessagePin.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMessage**
```swift
    open class func deleteMessage(messageId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

メッセージを削除

指定したメッセージを削除します。 自身が投稿したメッセージと自身が管理権限を持つWebhookとBOTが投稿したメッセージのみ削除することができます。 アーカイブされているチャンネルのメッセージを編集することは出来ません。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let messageId = 987 // UUID | メッセージUUID

// メッセージを削除
MessageAPI.deleteMessage(messageId: messageId) { (response, error) in
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

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editMessage**
```swift
    open class func editMessage(messageId: UUID, postMessageRequest: PostMessageRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

メッセージを編集

指定したメッセージを編集します。 自身が投稿したメッセージのみ編集することができます。 アーカイブされているチャンネルのメッセージを編集することは出来ません。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let messageId = 987 // UUID | メッセージUUID
let postMessageRequest = PostMessageRequest(content: "content_example", embed: false) // PostMessageRequest |  (optional)

// メッセージを編集
MessageAPI.editMessage(messageId: messageId, postMessageRequest: postMessageRequest) { (response, error) in
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
 **postMessageRequest** | [**PostMessageRequest**](PostMessageRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDirectMessages**
```swift
    open class func getDirectMessages(userId: UUID, limit: Int? = nil, offset: Int? = nil, since: Date? = nil, until: Date? = nil, inclusive: Bool? = nil, order: Order_getDirectMessages? = nil, completion: @escaping (_ data: [Message]?, _ error: Error?) -> Void)
```

ダイレクトメッセージのリストを取得

指定したユーザーとのダイレクトメッセージのリストを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let userId = 987 // UUID | ユーザーUUID
let limit = 987 // Int | 取得する件数 (optional)
let offset = 987 // Int | 取得するオフセット (optional) (default to 0)
let since = Date() // Date | 取得する時間範囲の開始日時 (optional) (default to Date(timeIntervalSince1970: -62167219200000000.0 / 1_000_000))
let until = Date() // Date | 取得する時間範囲の終了日時 (optional)
let inclusive = true // Bool | 範囲の端を含めるかどうか (optional) (default to false)
let order = "order_example" // String | 昇順か降順か (optional) (default to .desc)

// ダイレクトメッセージのリストを取得
MessageAPI.getDirectMessages(userId: userId, limit: limit, offset: offset, since: since, until: until, inclusive: inclusive, order: order) { (response, error) in
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
 **userId** | **UUID** | ユーザーUUID | 
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

# **getMessage**
```swift
    open class func getMessage(messageId: UUID, completion: @escaping (_ data: Message?, _ error: Error?) -> Void)
```

メッセージを取得

指定したメッセージを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let messageId = 987 // UUID | メッセージUUID

// メッセージを取得
MessageAPI.getMessage(messageId: messageId) { (response, error) in
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

[**Message**](Message.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessageClips**
```swift
    open class func getMessageClips(messageId: UUID, completion: @escaping (_ data: [MessageClip]?, _ error: Error?) -> Void)
```

自分のクリップを取得

対象のメッセージの自分のクリップの一覧を返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let messageId = 987 // UUID | メッセージUUID

// 自分のクリップを取得
MessageAPI.getMessageClips(messageId: messageId) { (response, error) in
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
MessageAPI.getMessageStamps(messageId: messageId) { (response, error) in
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

# **getMessages_0**
```swift
    open class func getMessages_0(channelId: UUID, limit: Int? = nil, offset: Int? = nil, since: Date? = nil, until: Date? = nil, inclusive: Bool? = nil, order: Order_getMessages_0? = nil, completion: @escaping (_ data: [Message]?, _ error: Error?) -> Void)
```

チャンネルメッセージのリストを取得

指定したチャンネルのメッセージのリストを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let channelId = 987 // UUID | チャンネルUUID
let limit = 987 // Int | 取得する件数 (optional)
let offset = 987 // Int | 取得するオフセット (optional) (default to 0)
let since = Date() // Date | 取得する時間範囲の開始日時 (optional) (default to Date(timeIntervalSince1970: -62167219200000000.0 / 1_000_000))
let until = Date() // Date | 取得する時間範囲の終了日時 (optional)
let inclusive = true // Bool | 範囲の端を含めるかどうか (optional) (default to false)
let order = "order_example" // String | 昇順か降順か (optional) (default to .desc)

// チャンネルメッセージのリストを取得
MessageAPI.getMessages_0(channelId: channelId, limit: limit, offset: offset, since: since, until: until, inclusive: inclusive, order: order) { (response, error) in
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
 **channelId** | **UUID** | チャンネルUUID | 
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

# **getPin**
```swift
    open class func getPin(messageId: UUID, completion: @escaping (_ data: MessagePin?, _ error: Error?) -> Void)
```

ピン留めを取得

指定したメッセージのピン留め情報を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let messageId = 987 // UUID | メッセージUUID

// ピン留めを取得
MessageAPI.getPin(messageId: messageId) { (response, error) in
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

[**MessagePin**](MessagePin.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postDirectMessage**
```swift
    open class func postDirectMessage(userId: UUID, postMessageRequest: PostMessageRequest? = nil, completion: @escaping (_ data: Message?, _ error: Error?) -> Void)
```

ダイレクトメッセージを送信

指定したユーザーにダイレクトメッセージを送信します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let userId = 987 // UUID | ユーザーUUID
let postMessageRequest = PostMessageRequest(content: "content_example", embed: false) // PostMessageRequest |  (optional)

// ダイレクトメッセージを送信
MessageAPI.postDirectMessage(userId: userId, postMessageRequest: postMessageRequest) { (response, error) in
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
 **userId** | **UUID** | ユーザーUUID | 
 **postMessageRequest** | [**PostMessageRequest**](PostMessageRequest.md) |  | [optional] 

### Return type

[**Message**](Message.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postMessage**
```swift
    open class func postMessage(channelId: UUID, postMessageRequest: PostMessageRequest? = nil, completion: @escaping (_ data: Message?, _ error: Error?) -> Void)
```

チャンネルにメッセージを投稿

指定したチャンネルにメッセージを投稿します。 embedをtrueに指定すると、メッセージ埋め込みが自動で行われます。 アーカイブされているチャンネルに投稿することはできません。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let channelId = 987 // UUID | チャンネルUUID
let postMessageRequest = PostMessageRequest(content: "content_example", embed: false) // PostMessageRequest |  (optional)

// チャンネルにメッセージを投稿
MessageAPI.postMessage(channelId: channelId, postMessageRequest: postMessageRequest) { (response, error) in
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
 **channelId** | **UUID** | チャンネルUUID | 
 **postMessageRequest** | [**PostMessageRequest**](PostMessageRequest.md) |  | [optional] 

### Return type

[**Message**](Message.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
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
MessageAPI.removeMessageStamp(messageId: messageId, stampId: stampId) { (response, error) in
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

# **removePin**
```swift
    open class func removePin(messageId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

ピン留めを外す

指定したメッセージのピン留めを外します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let messageId = 987 // UUID | メッセージUUID

// ピン留めを外す
MessageAPI.removePin(messageId: messageId) { (response, error) in
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

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchMessages**
```swift
    open class func searchMessages(word: String? = nil, after: Date? = nil, before: Date? = nil, _in: UUID? = nil, to: UUID? = nil, from: UUID? = nil, citation: UUID? = nil, bot: Bool? = nil, hasURL: Bool? = nil, hasAttachments: Bool? = nil, hasImage: Bool? = nil, hasVideo: Bool? = nil, hasAudio: Bool? = nil, limit: Int? = nil, offset: Int? = nil, sort: Sort_searchMessages? = nil, completion: @escaping (_ data: MessageSearchResult?, _ error: Error?) -> Void)
```

メッセージを検索

メッセージを検索します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let word = "word_example" // String | 検索ワード Simple-Query-String-Syntaxをパースして検索します  (optional)
let after = Date() // Date | 投稿日時が指定日時より後 (optional)
let before = Date() // Date | 投稿日時が指定日時より前 (optional)
let _in = 987 // UUID | メッセージが投稿されたチャンネル (optional)
let to = 987 // UUID | メンションされたユーザー (optional)
let from = 987 // UUID | メッセージを投稿したユーザー (optional)
let citation = 987 // UUID | 引用しているメッセージ (optional)
let bot = true // Bool | メッセージを投稿したユーザーがBotかどうか (optional)
let hasURL = true // Bool | メッセージがURLを含むか (optional)
let hasAttachments = true // Bool | メッセージが添付ファイルを含むか (optional)
let hasImage = true // Bool | メッセージが画像を含むか (optional)
let hasVideo = true // Bool | メッセージが動画を含むか (optional)
let hasAudio = true // Bool | メッセージが音声ファイルを含むか (optional)
let limit = 987 // Int | 検索結果から取得するメッセージの最大件数 (optional)
let offset = 987 // Int | 検索結果から取得するメッセージのオフセット (optional)
let sort = "sort_example" // String | ソート順 (作成日時が新しい `createdAt`, 作成日時が古い `-createdAt`, 更新日時が新しい `updatedAt`, 更新日時が古い `-updatedAt`) (optional) (default to .createdat)

// メッセージを検索
MessageAPI.searchMessages(word: word, after: after, before: before, _in: _in, to: to, from: from, citation: citation, bot: bot, hasURL: hasURL, hasAttachments: hasAttachments, hasImage: hasImage, hasVideo: hasVideo, hasAudio: hasAudio, limit: limit, offset: offset, sort: sort) { (response, error) in
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
 **word** | **String** | 検索ワード Simple-Query-String-Syntaxをパースして検索します  | [optional] 
 **after** | **Date** | 投稿日時が指定日時より後 | [optional] 
 **before** | **Date** | 投稿日時が指定日時より前 | [optional] 
 **_in** | **UUID** | メッセージが投稿されたチャンネル | [optional] 
 **to** | **UUID** | メンションされたユーザー | [optional] 
 **from** | **UUID** | メッセージを投稿したユーザー | [optional] 
 **citation** | **UUID** | 引用しているメッセージ | [optional] 
 **bot** | **Bool** | メッセージを投稿したユーザーがBotかどうか | [optional] 
 **hasURL** | **Bool** | メッセージがURLを含むか | [optional] 
 **hasAttachments** | **Bool** | メッセージが添付ファイルを含むか | [optional] 
 **hasImage** | **Bool** | メッセージが画像を含むか | [optional] 
 **hasVideo** | **Bool** | メッセージが動画を含むか | [optional] 
 **hasAudio** | **Bool** | メッセージが音声ファイルを含むか | [optional] 
 **limit** | **Int** | 検索結果から取得するメッセージの最大件数 | [optional] 
 **offset** | **Int** | 検索結果から取得するメッセージのオフセット | [optional] 
 **sort** | **String** | ソート順 (作成日時が新しい &#x60;createdAt&#x60;, 作成日時が古い &#x60;-createdAt&#x60;, 更新日時が新しい &#x60;updatedAt&#x60;, 更新日時が古い &#x60;-updatedAt&#x60;) | [optional] [default to .createdat]

### Return type

[**MessageSearchResult**](MessageSearchResult.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

