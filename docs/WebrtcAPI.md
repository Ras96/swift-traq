# WebrtcAPI

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWebRTCState**](WebrtcAPI.md#getwebrtcstate) | **GET** /webrtc/state | WebRTC状態を取得
[**postWebRTCAuthenticate**](WebrtcAPI.md#postwebrtcauthenticate) | **POST** /webrtc/authenticate | Skyway用認証API


# **getWebRTCState**
```swift
    open class func getWebRTCState(completion: @escaping (_ data: [WebRTCUserState]?, _ error: Error?) -> Void)
```

WebRTC状態を取得

現在のWebRTC状態を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// WebRTC状態を取得
WebrtcAPI.getWebRTCState() { (response, error) in
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

[**[WebRTCUserState]**](WebRTCUserState.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postWebRTCAuthenticate**
```swift
    open class func postWebRTCAuthenticate(postWebRTCAuthenticateRequest: PostWebRTCAuthenticateRequest? = nil, completion: @escaping (_ data: WebRTCAuthenticateResult?, _ error: Error?) -> Void)
```

Skyway用認証API

Skyway WebRTC用の認証API

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let postWebRTCAuthenticateRequest = PostWebRTCAuthenticateRequest(peerId: "peerId_example") // PostWebRTCAuthenticateRequest |  (optional)

// Skyway用認証API
WebrtcAPI.postWebRTCAuthenticate(postWebRTCAuthenticateRequest: postWebRTCAuthenticateRequest) { (response, error) in
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
 **postWebRTCAuthenticateRequest** | [**PostWebRTCAuthenticateRequest**](PostWebRTCAuthenticateRequest.md) |  | [optional] 

### Return type

[**WebRTCAuthenticateResult**](WebRTCAuthenticateResult.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

