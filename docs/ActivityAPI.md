# ActivityAPI

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getActivityTimeline**](ActivityAPI.md#getactivitytimeline) | **GET** /activity/timeline | アクテビティタイムラインを取得
[**getOnlineUsers**](ActivityAPI.md#getonlineusers) | **GET** /activity/onlines | オンラインユーザーリストを取得


# **getActivityTimeline**
```swift
    open class func getActivityTimeline(limit: Int? = nil, all: Bool? = nil, perChannel: Bool? = nil, completion: @escaping (_ data: [ActivityTimelineMessage]?, _ error: Error?) -> Void)
```

アクテビティタイムラインを取得

パブリックチャンネルの直近の投稿メッセージを作成日時の降順で取得します。 `all`が`true`でない場合、購読チャンネルのみのタイムラインを取得します

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let limit = 987 // Int | 取得する件数 (optional) (default to 50)
let all = true // Bool | 全てのチャンネルのタイムラインを取得する (optional) (default to false)
let perChannel = true // Bool | 同じチャンネルのメッセージは最新のもののみ取得するか (optional) (default to false)

// アクテビティタイムラインを取得
ActivityAPI.getActivityTimeline(limit: limit, all: all, perChannel: perChannel) { (response, error) in
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
 **limit** | **Int** | 取得する件数 | [optional] [default to 50]
 **all** | **Bool** | 全てのチャンネルのタイムラインを取得する | [optional] [default to false]
 **perChannel** | **Bool** | 同じチャンネルのメッセージは最新のもののみ取得するか | [optional] [default to false]

### Return type

[**[ActivityTimelineMessage]**](ActivityTimelineMessage.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOnlineUsers**
```swift
    open class func getOnlineUsers(completion: @escaping (_ data: [String]?, _ error: Error?) -> Void)
```

オンラインユーザーリストを取得

現在オンラインな(SSEまたはWSが接続中)ユーザーのUUIDのリストを返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq


// オンラインユーザーリストを取得
ActivityAPI.getOnlineUsers() { (response, error) in
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

**[String]**

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

