# ChannelAPI

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createChannel**](ChannelAPI.md#createchannel) | **POST** /channels | チャンネルを作成
[**editChannel**](ChannelAPI.md#editchannel) | **PATCH** /channels/{channelId} | チャンネル情報を変更
[**editChannelSubscribers**](ChannelAPI.md#editchannelsubscribers) | **PATCH** /channels/{channelId}/subscribers | チャンネルの通知購読者を編集
[**editChannelTopic**](ChannelAPI.md#editchanneltopic) | **PUT** /channels/{channelId}/topic | チャンネルトピックを編集
[**getChannel**](ChannelAPI.md#getchannel) | **GET** /channels/{channelId} | チャンネル情報を取得
[**getChannelBots**](ChannelAPI.md#getchannelbots) | **GET** /channels/{channelId}/bots | チャンネル参加中のBOTのリストを取得
[**getChannelEvents**](ChannelAPI.md#getchannelevents) | **GET** /channels/{channelId}/events | チャンネルイベントのリストを取得
[**getChannelPins**](ChannelAPI.md#getchannelpins) | **GET** /channels/{channelId}/pins | チャンネルピンのリストを取得
[**getChannelStats**](ChannelAPI.md#getchannelstats) | **GET** /channels/{channelId}/stats | チャンネル統計情報を取得
[**getChannelSubscribers**](ChannelAPI.md#getchannelsubscribers) | **GET** /channels/{channelId}/subscribers | チャンネルの通知購読者のリストを取得
[**getChannelTopic**](ChannelAPI.md#getchanneltopic) | **GET** /channels/{channelId}/topic | チャンネルトピックを取得
[**getChannelViewers**](ChannelAPI.md#getchannelviewers) | **GET** /channels/{channelId}/viewers | チャンネル閲覧者リストを取得
[**getChannels**](ChannelAPI.md#getchannels) | **GET** /channels | チャンネルリストを取得
[**getMessages**](ChannelAPI.md#getmessages) | **GET** /channels/{channelId}/messages | チャンネルメッセージのリストを取得
[**getUserDMChannel**](ChannelAPI.md#getuserdmchannel) | **GET** /users/{userId}/dm-channel | DMチャンネル情報を取得
[**postMessage**](ChannelAPI.md#postmessage) | **POST** /channels/{channelId}/messages | チャンネルにメッセージを投稿
[**setChannelSubscribers**](ChannelAPI.md#setchannelsubscribers) | **PUT** /channels/{channelId}/subscribers | チャンネルの通知購読者を設定


# **createChannel**
```swift
    open class func createChannel(postChannelRequest: PostChannelRequest? = nil, completion: @escaping (_ data: Channel?, _ error: Error?) -> Void)
```

チャンネルを作成

チャンネルを作成します。 階層が6以上になるチャンネルは作成できません。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let postChannelRequest = PostChannelRequest(name: "name_example", parent: 123) // PostChannelRequest |  (optional)

// チャンネルを作成
ChannelAPI.createChannel(postChannelRequest: postChannelRequest) { (response, error) in
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
 **postChannelRequest** | [**PostChannelRequest**](PostChannelRequest.md) |  | [optional] 

### Return type

[**Channel**](Channel.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editChannel**
```swift
    open class func editChannel(channelId: UUID, patchChannelRequest: PatchChannelRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

チャンネル情報を変更

指定したチャンネルの情報を変更します。 変更には権限が必要です。 ルートチャンネルに移動させる場合は、`parent`に`00000000-0000-0000-0000-000000000000`を指定してください。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let channelId = 987 // UUID | チャンネルUUID
let patchChannelRequest = PatchChannelRequest(name: "name_example", archived: false, force: false, parent: 123) // PatchChannelRequest |  (optional)

// チャンネル情報を変更
ChannelAPI.editChannel(channelId: channelId, patchChannelRequest: patchChannelRequest) { (response, error) in
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
 **patchChannelRequest** | [**PatchChannelRequest**](PatchChannelRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editChannelSubscribers**
```swift
    open class func editChannelSubscribers(channelId: UUID, patchChannelSubscribersRequest: PatchChannelSubscribersRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

チャンネルの通知購読者を編集

指定したチャンネルの通知購読者を編集します。 リクエストに含めなかったユーザーの通知購読状態は変更しません。 また、存在しないユーザーを指定した場合は無視されます。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let channelId = 987 // UUID | チャンネルUUID
let patchChannelSubscribersRequest = PatchChannelSubscribersRequest(on: [123], off: [123]) // PatchChannelSubscribersRequest |  (optional)

// チャンネルの通知購読者を編集
ChannelAPI.editChannelSubscribers(channelId: channelId, patchChannelSubscribersRequest: patchChannelSubscribersRequest) { (response, error) in
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
 **patchChannelSubscribersRequest** | [**PatchChannelSubscribersRequest**](PatchChannelSubscribersRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editChannelTopic**
```swift
    open class func editChannelTopic(channelId: UUID, putChannelTopicRequest: PutChannelTopicRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

チャンネルトピックを編集

指定したチャンネルのトピックを編集します。 アーカイブされているチャンネルのトピックは編集できません。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let channelId = 987 // UUID | チャンネルUUID
let putChannelTopicRequest = PutChannelTopicRequest(topic: "topic_example") // PutChannelTopicRequest |  (optional)

// チャンネルトピックを編集
ChannelAPI.editChannelTopic(channelId: channelId, putChannelTopicRequest: putChannelTopicRequest) { (response, error) in
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
 **putChannelTopicRequest** | [**PutChannelTopicRequest**](PutChannelTopicRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannel**
```swift
    open class func getChannel(channelId: UUID, completion: @escaping (_ data: Channel?, _ error: Error?) -> Void)
```

チャンネル情報を取得

指定したチャンネルの情報を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let channelId = 987 // UUID | チャンネルUUID

// チャンネル情報を取得
ChannelAPI.getChannel(channelId: channelId) { (response, error) in
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

### Return type

[**Channel**](Channel.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelBots**
```swift
    open class func getChannelBots(channelId: UUID, completion: @escaping (_ data: [BotUser]?, _ error: Error?) -> Void)
```

チャンネル参加中のBOTのリストを取得

指定したチャンネルに参加しているBOTのリストを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let channelId = 987 // UUID | チャンネルUUID

// チャンネル参加中のBOTのリストを取得
ChannelAPI.getChannelBots(channelId: channelId) { (response, error) in
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

### Return type

[**[BotUser]**](BotUser.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelEvents**
```swift
    open class func getChannelEvents(channelId: UUID, limit: Int? = nil, offset: Int? = nil, since: Date? = nil, until: Date? = nil, inclusive: Bool? = nil, order: Order_getChannelEvents? = nil, completion: @escaping (_ data: [ChannelEvent]?, _ error: Error?) -> Void)
```

チャンネルイベントのリストを取得

指定したチャンネルのイベントリストを取得します。

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

// チャンネルイベントのリストを取得
ChannelAPI.getChannelEvents(channelId: channelId, limit: limit, offset: offset, since: since, until: until, inclusive: inclusive, order: order) { (response, error) in
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

[**[ChannelEvent]**](ChannelEvent.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelPins**
```swift
    open class func getChannelPins(channelId: UUID, completion: @escaping (_ data: [Pin]?, _ error: Error?) -> Void)
```

チャンネルピンのリストを取得

指定したチャンネルにピン留めされているピンメッセージのリストを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let channelId = 987 // UUID | チャンネルUUID

// チャンネルピンのリストを取得
ChannelAPI.getChannelPins(channelId: channelId) { (response, error) in
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

### Return type

[**[Pin]**](Pin.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelStats**
```swift
    open class func getChannelStats(channelId: UUID, completion: @escaping (_ data: ChannelStats?, _ error: Error?) -> Void)
```

チャンネル統計情報を取得

指定したチャンネルの統計情報を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let channelId = 987 // UUID | チャンネルUUID

// チャンネル統計情報を取得
ChannelAPI.getChannelStats(channelId: channelId) { (response, error) in
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

### Return type

[**ChannelStats**](ChannelStats.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelSubscribers**
```swift
    open class func getChannelSubscribers(channelId: UUID, completion: @escaping (_ data: [UUID]?, _ error: Error?) -> Void)
```

チャンネルの通知購読者のリストを取得

指定したチャンネルを通知購読しているユーザーのUUIDのリストを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let channelId = 987 // UUID | チャンネルUUID

// チャンネルの通知購読者のリストを取得
ChannelAPI.getChannelSubscribers(channelId: channelId) { (response, error) in
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

### Return type

**[UUID]**

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelTopic**
```swift
    open class func getChannelTopic(channelId: UUID, completion: @escaping (_ data: ChannelTopic?, _ error: Error?) -> Void)
```

チャンネルトピックを取得

指定したチャンネルのトピックを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let channelId = 987 // UUID | チャンネルUUID

// チャンネルトピックを取得
ChannelAPI.getChannelTopic(channelId: channelId) { (response, error) in
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

### Return type

[**ChannelTopic**](ChannelTopic.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannelViewers**
```swift
    open class func getChannelViewers(channelId: UUID, completion: @escaping (_ data: [ChannelViewer]?, _ error: Error?) -> Void)
```

チャンネル閲覧者リストを取得

指定したチャンネルの閲覧者のリストを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let channelId = 987 // UUID | チャンネルUUID

// チャンネル閲覧者リストを取得
ChannelAPI.getChannelViewers(channelId: channelId) { (response, error) in
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

### Return type

[**[ChannelViewer]**](ChannelViewer.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChannels**
```swift
    open class func getChannels(includeDm: Bool? = nil, completion: @escaping (_ data: ChannelList?, _ error: Error?) -> Void)
```

チャンネルリストを取得

チャンネルのリストを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let includeDm = true // Bool | ダイレクトメッセージチャンネルをレスポンスに含めるかどうか (optional) (default to false)

// チャンネルリストを取得
ChannelAPI.getChannels(includeDm: includeDm) { (response, error) in
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
 **includeDm** | **Bool** | ダイレクトメッセージチャンネルをレスポンスに含めるかどうか | [optional] [default to false]

### Return type

[**ChannelList**](ChannelList.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessages**
```swift
    open class func getMessages(channelId: UUID, limit: Int? = nil, offset: Int? = nil, since: Date? = nil, until: Date? = nil, inclusive: Bool? = nil, order: Order_getMessages? = nil, completion: @escaping (_ data: [Message]?, _ error: Error?) -> Void)
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
ChannelAPI.getMessages(channelId: channelId, limit: limit, offset: offset, since: since, until: until, inclusive: inclusive, order: order) { (response, error) in
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

# **getUserDMChannel**
```swift
    open class func getUserDMChannel(userId: UUID, completion: @escaping (_ data: DMChannel?, _ error: Error?) -> Void)
```

DMチャンネル情報を取得

指定したユーザーとのダイレクトメッセージチャンネルの情報を返します。 ダイレクトメッセージチャンネルが存在しなかった場合、自動的に作成されます。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let userId = 987 // UUID | 

// DMチャンネル情報を取得
ChannelAPI.getUserDMChannel(userId: userId) { (response, error) in
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
 **userId** | **UUID** |  | 

### Return type

[**DMChannel**](DMChannel.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
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
ChannelAPI.postMessage(channelId: channelId, postMessageRequest: postMessageRequest) { (response, error) in
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

# **setChannelSubscribers**
```swift
    open class func setChannelSubscribers(channelId: UUID, putChannelSubscribersRequest: PutChannelSubscribersRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

チャンネルの通知購読者を設定

指定したチャンネルの通知購読者を設定します。 リクエストに含めなかったユーザーの通知購読状態はオフになります。 また、存在しないユーザーを指定した場合は無視されます。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let channelId = 987 // UUID | チャンネルUUID
let putChannelSubscribersRequest = PutChannelSubscribersRequest(on: [123]) // PutChannelSubscribersRequest |  (optional)

// チャンネルの通知購読者を設定
ChannelAPI.setChannelSubscribers(channelId: channelId, putChannelSubscribersRequest: putChannelSubscribersRequest) { (response, error) in
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
 **putChannelSubscribersRequest** | [**PutChannelSubscribersRequest**](PutChannelSubscribersRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

