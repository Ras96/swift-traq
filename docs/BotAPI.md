# BotAPI

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activateBot**](BotAPI.md#activatebot) | **POST** /bots/{botId}/actions/activate | BOTをアクティベート
[**changeBotIcon**](BotAPI.md#changeboticon) | **PUT** /bots/{botId}/icon | BOTのアイコン画像を変更
[**connectBotWS**](BotAPI.md#connectbotws) | **GET** /bots/ws | WebSocket Mode BOT用通知ストリームに接続します
[**createBot**](BotAPI.md#createbot) | **POST** /bots | BOTを作成
[**deleteBot**](BotAPI.md#deletebot) | **DELETE** /bots/{botId} | BOTを削除
[**editBot**](BotAPI.md#editbot) | **PATCH** /bots/{botId} | BOT情報を変更
[**getBot**](BotAPI.md#getbot) | **GET** /bots/{botId} | BOT情報を取得
[**getBotIcon**](BotAPI.md#getboticon) | **GET** /bots/{botId}/icon | BOTのアイコン画像を取得
[**getBotLogs**](BotAPI.md#getbotlogs) | **GET** /bots/{botId}/logs | BOTのイベントログを取得
[**getBots**](BotAPI.md#getbots) | **GET** /bots | BOTリストを取得
[**getChannelBots**](BotAPI.md#getchannelbots) | **GET** /channels/{channelId}/bots | チャンネル参加中のBOTのリストを取得
[**inactivateBot**](BotAPI.md#inactivatebot) | **POST** /bots/{botId}/actions/inactivate | BOTをインアクティベート
[**letBotJoinChannel**](BotAPI.md#letbotjoinchannel) | **POST** /bots/{botId}/actions/join | BOTをチャンネルに参加させる
[**letBotLeaveChannel**](BotAPI.md#letbotleavechannel) | **POST** /bots/{botId}/actions/leave | BOTをチャンネルから退出させる
[**reissueBot**](BotAPI.md#reissuebot) | **POST** /bots/{botId}/actions/reissue | BOTのトークンを再発行


# **activateBot**
```swift
    open class func activateBot(botId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

BOTをアクティベート

指定したBOTを有効化します。 対象のBOTの管理権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let botId = 987 // UUID | BOTUUID

// BOTをアクティベート
BotAPI.activateBot(botId: botId) { (response, error) in
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
 **botId** | **UUID** | BOTUUID | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **changeBotIcon**
```swift
    open class func changeBotIcon(botId: UUID, file: URL, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

BOTのアイコン画像を変更

指定したBOTのアイコン画像を変更を変更します。 対象のBOTの管理権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let botId = 987 // UUID | BOTUUID
let file = URL(string: "https://example.com")! // URL | アイコン画像(1MBまでのpng, jpeg, gif)

// BOTのアイコン画像を変更
BotAPI.changeBotIcon(botId: botId, file: file) { (response, error) in
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
 **botId** | **UUID** | BOTUUID | 
 **file** | **URL** | アイコン画像(1MBまでのpng, jpeg, gif) | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connectBotWS**
```swift
    open class func connectBotWS(completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

WebSocket Mode BOT用通知ストリームに接続します

# BOT WebSocketプロトコル  ## 送信  `コマンド:引数1:引数2:...` のような形式のTextMessageをサーバーに送信することで、このWebSocketセッションに対する設定が実行できます。  ### `rtcstate`コマンド 自分のWebRTC状態を変更します。 他のコネクションが既に状態を保持している場合、変更することができません。  `rtcstate:{チャンネルID}:({状態}:{セッションID})*`  チャンネルIDにnullもしくは空文字を指定するか、状態にnullもしくは空文字を指定した場合、WebRTC状態はリセットされます。  `rtcstate:null`, `rtcstate:`, `rtcstate:channelId:null`, `rtcstate:channelId:`  コネクションが切断された場合、自分のWebRTC状態はリセットされます。  ## 受信  TextMessageとして各種イベントが`type`、`reqId`、`body`を持つJSONとして非同期に送られます。 `body`の内容はHTTP Modeの場合のRequest Bodyと同様です。 例外として`ERROR`イベントは`reqId`を持ちません。  例: PINGイベント `{\"type\":\"PING\",\"reqId\":\"requestId\",\"body\":{\"eventTime\":\"2019-05-07T04:50:48.582586882Z\"}}`  ### `ERROR`  コマンドの引数が不正などの理由でコマンドが受理されなかった場合に送られます。 非同期に送られるため、必ずしもコマンドとの対応関係を確定できないことに注意してください。 本番環境ではERRORが送られないようにすることが望ましいです。  `{\"type\":\"ERROR\",\"body\":\"message\"}`

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// WebSocket Mode BOT用通知ストリームに接続します
BotAPI.connectBotWS() { (response, error) in
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

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createBot**
```swift
    open class func createBot(postBotRequest: PostBotRequest? = nil, completion: @escaping (_ data: BotDetail?, _ error: Error?) -> Void)
```

BOTを作成

BOTを作成します。 作成後に購読イベントの設定を行う必要があります。 さらにHTTP Modeの場合はアクティベーションを行う必要があります。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let postBotRequest = PostBotRequest(name: "name_example", displayName: "displayName_example", description: "description_example", mode: BotMode(), endpoint: "endpoint_example") // PostBotRequest |  (optional)

// BOTを作成
BotAPI.createBot(postBotRequest: postBotRequest) { (response, error) in
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
 **postBotRequest** | [**PostBotRequest**](PostBotRequest.md) |  | [optional] 

### Return type

[**BotDetail**](BotDetail.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBot**
```swift
    open class func deleteBot(botId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

BOTを削除

指定したBOTを削除します。 対象のBOTの管理権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let botId = 987 // UUID | BOTUUID

// BOTを削除
BotAPI.deleteBot(botId: botId) { (response, error) in
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
 **botId** | **UUID** | BOTUUID | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editBot**
```swift
    open class func editBot(botId: UUID, patchBotRequest: PatchBotRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

BOT情報を変更

指定したBOTの情報を変更します。 対象のBOTの管理権限が必要です。 BOT開発者UUIDを変更した場合は、変更先ユーザーにBOT管理権限が移譲され、自分自身は権限を失います。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let botId = 987 // UUID | BOTUUID
let patchBotRequest = PatchBotRequest(displayName: "displayName_example", description: "description_example", privileged: false, mode: BotMode(), endpoint: "endpoint_example", developerId: 123, subscribeEvents: ["subscribeEvents_example"]) // PatchBotRequest |  (optional)

// BOT情報を変更
BotAPI.editBot(botId: botId, patchBotRequest: patchBotRequest) { (response, error) in
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
 **botId** | **UUID** | BOTUUID | 
 **patchBotRequest** | [**PatchBotRequest**](PatchBotRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBot**
```swift
    open class func getBot(botId: UUID, detail: Bool? = nil, completion: @escaping (_ data: GetBot200Response?, _ error: Error?) -> Void)
```

BOT情報を取得

指定したBOTのBOT情報を取得します。 BOT詳細情報を取得する場合は、対象のBOTの管理権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let botId = 987 // UUID | BOTUUID
let detail = true // Bool | 詳細情報を含めるかどうか (optional) (default to false)

// BOT情報を取得
BotAPI.getBot(botId: botId, detail: detail) { (response, error) in
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
 **botId** | **UUID** | BOTUUID | 
 **detail** | **Bool** | 詳細情報を含めるかどうか | [optional] [default to false]

### Return type

[**GetBot200Response**](GetBot200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBotIcon**
```swift
    open class func getBotIcon(botId: UUID, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

BOTのアイコン画像を取得

指定したBOTのアイコン画像を取得を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let botId = 987 // UUID | BOTUUID

// BOTのアイコン画像を取得
BotAPI.getBotIcon(botId: botId) { (response, error) in
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
 **botId** | **UUID** | BOTUUID | 

### Return type

**URL**

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/jpeg, image/gif, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBotLogs**
```swift
    open class func getBotLogs(botId: UUID, limit: Int? = nil, offset: Int? = nil, completion: @escaping (_ data: [BotEventLog]?, _ error: Error?) -> Void)
```

BOTのイベントログを取得

指定したBOTのイベントログを取得します。 対象のBOTの管理権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let botId = 987 // UUID | BOTUUID
let limit = 987 // Int | 取得する件数 (optional)
let offset = 987 // Int | 取得するオフセット (optional) (default to 0)

// BOTのイベントログを取得
BotAPI.getBotLogs(botId: botId, limit: limit, offset: offset) { (response, error) in
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
 **botId** | **UUID** | BOTUUID | 
 **limit** | **Int** | 取得する件数 | [optional] 
 **offset** | **Int** | 取得するオフセット | [optional] [default to 0]

### Return type

[**[BotEventLog]**](BotEventLog.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBots**
```swift
    open class func getBots(all: Bool? = nil, completion: @escaping (_ data: [Bot]?, _ error: Error?) -> Void)
```

BOTリストを取得

BOT情報のリストを取得します。 allを指定しない場合、自分が開発者のBOTのみを返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let all = true // Bool | 全てのBOTを取得するかどうか (optional) (default to false)

// BOTリストを取得
BotAPI.getBots(all: all) { (response, error) in
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
 **all** | **Bool** | 全てのBOTを取得するかどうか | [optional] [default to false]

### Return type

[**[Bot]**](Bot.md)

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
import OpenAPIClient

let channelId = 987 // UUID | チャンネルUUID

// チャンネル参加中のBOTのリストを取得
BotAPI.getChannelBots(channelId: channelId) { (response, error) in
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

# **inactivateBot**
```swift
    open class func inactivateBot(botId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

BOTをインアクティベート

指定したBOTを無効化します。対象のBOTの管理権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let botId = 987 // UUID | BOTUUID

// BOTをインアクティベート
BotAPI.inactivateBot(botId: botId) { (response, error) in
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
 **botId** | **UUID** | BOTUUID | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **letBotJoinChannel**
```swift
    open class func letBotJoinChannel(botId: UUID, postBotActionJoinRequest: PostBotActionJoinRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

BOTをチャンネルに参加させる

指定したBOTを指定したチャンネルに参加させます。 チャンネルに参加したBOTは、そのチャンネルの各種イベントを受け取るようになります。 対象のBOTの管理権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let botId = 987 // UUID | BOTUUID
let postBotActionJoinRequest = PostBotActionJoinRequest(channelId: 123) // PostBotActionJoinRequest |  (optional)

// BOTをチャンネルに参加させる
BotAPI.letBotJoinChannel(botId: botId, postBotActionJoinRequest: postBotActionJoinRequest) { (response, error) in
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
 **botId** | **UUID** | BOTUUID | 
 **postBotActionJoinRequest** | [**PostBotActionJoinRequest**](PostBotActionJoinRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **letBotLeaveChannel**
```swift
    open class func letBotLeaveChannel(botId: UUID, postBotActionLeaveRequest: PostBotActionLeaveRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

BOTをチャンネルから退出させる

指定したBOTを指定したチャンネルから退出させます。 対象のBOTの管理権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let botId = 987 // UUID | BOTUUID
let postBotActionLeaveRequest = PostBotActionLeaveRequest(channelId: 123) // PostBotActionLeaveRequest |  (optional)

// BOTをチャンネルから退出させる
BotAPI.letBotLeaveChannel(botId: botId, postBotActionLeaveRequest: postBotActionLeaveRequest) { (response, error) in
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
 **botId** | **UUID** | BOTUUID | 
 **postBotActionLeaveRequest** | [**PostBotActionLeaveRequest**](PostBotActionLeaveRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reissueBot**
```swift
    open class func reissueBot(botId: UUID, completion: @escaping (_ data: BotTokens?, _ error: Error?) -> Void)
```

BOTのトークンを再発行

指定したBOTの現在の各種トークンを無効化し、再発行を行います。 対象のBOTの管理権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let botId = 987 // UUID | BOTUUID

// BOTのトークンを再発行
BotAPI.reissueBot(botId: botId) { (response, error) in
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
 **botId** | **UUID** | BOTUUID | 

### Return type

[**BotTokens**](BotTokens.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

