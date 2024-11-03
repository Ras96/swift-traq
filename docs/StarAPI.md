# StarAPI

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMyStar_0**](StarAPI.md#addmystar_0) | **POST** /users/me/stars | チャンネルをスターに追加
[**getMyStars_0**](StarAPI.md#getmystars_0) | **GET** /users/me/stars | スターチャンネルリストを取得
[**removeMyStar_0**](StarAPI.md#removemystar_0) | **DELETE** /users/me/stars/{channelId} | チャンネルをスターから削除します


# **addMyStar_0**
```swift
    open class func addMyStar_0(postStarRequest: PostStarRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

チャンネルをスターに追加

指定したチャンネルをスターチャンネルに追加します。 スター済みのチャンネルIDを指定した場合、204を返します。 不正なチャンネルIDを指定した場合、400を返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let postStarRequest = PostStarRequest(channelId: 123) // PostStarRequest |  (optional)

// チャンネルをスターに追加
StarAPI.addMyStar_0(postStarRequest: postStarRequest) { (response, error) in
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
 **postStarRequest** | [**PostStarRequest**](PostStarRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyStars_0**
```swift
    open class func getMyStars_0(completion: @escaping (_ data: [UUID]?, _ error: Error?) -> Void)
```

スターチャンネルリストを取得

自分がスターしているチャンネルのUUIDの配列を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq


// スターチャンネルリストを取得
StarAPI.getMyStars_0() { (response, error) in
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

**[UUID]**

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeMyStar_0**
```swift
    open class func removeMyStar_0(channelId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

チャンネルをスターから削除します

既にスターから削除されているチャンネルを指定した場合は204を返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let channelId = 987 // UUID | チャンネルUUID

// チャンネルをスターから削除します
StarAPI.removeMyStar_0(channelId: channelId) { (response, error) in
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

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

