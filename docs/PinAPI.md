# PinAPI

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPin_0**](PinAPI.md#createpin_0) | **POST** /messages/{messageId}/pin | ピン留めする
[**getChannelPins_0**](PinAPI.md#getchannelpins_0) | **GET** /channels/{channelId}/pins | チャンネルピンのリストを取得
[**getPin_0**](PinAPI.md#getpin_0) | **GET** /messages/{messageId}/pin | ピン留めを取得
[**removePin_0**](PinAPI.md#removepin_0) | **DELETE** /messages/{messageId}/pin | ピン留めを外す


# **createPin_0**
```swift
    open class func createPin_0(messageId: UUID, completion: @escaping (_ data: MessagePin?, _ error: Error?) -> Void)
```

ピン留めする

指定したメッセージをピン留めします。 アーカイブされているチャンネルのメッセージ・存在しないメッセージ・チャンネル当たりの上限数を超えたメッセージのピン留めはできません。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let messageId = 987 // UUID | メッセージUUID

// ピン留めする
PinAPI.createPin_0(messageId: messageId) { (response, error) in
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

# **getChannelPins_0**
```swift
    open class func getChannelPins_0(channelId: UUID, completion: @escaping (_ data: [Pin]?, _ error: Error?) -> Void)
```

チャンネルピンのリストを取得

指定したチャンネルにピン留めされているピンメッセージのリストを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let channelId = 987 // UUID | チャンネルUUID

// チャンネルピンのリストを取得
PinAPI.getChannelPins_0(channelId: channelId) { (response, error) in
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

# **getPin_0**
```swift
    open class func getPin_0(messageId: UUID, completion: @escaping (_ data: MessagePin?, _ error: Error?) -> Void)
```

ピン留めを取得

指定したメッセージのピン留め情報を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let messageId = 987 // UUID | メッセージUUID

// ピン留めを取得
PinAPI.getPin_0(messageId: messageId) { (response, error) in
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

# **removePin_0**
```swift
    open class func removePin_0(messageId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

ピン留めを外す

指定したメッセージのピン留めを外します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let messageId = 987 // UUID | メッセージUUID

// ピン留めを外す
PinAPI.removePin_0(messageId: messageId) { (response, error) in
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

