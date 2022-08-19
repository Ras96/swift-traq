# StarAPI

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMyStar**](StarAPI.md#addmystar) | **POST** /users/me/stars | チャンネルをスターに追加
[**getMyStars**](StarAPI.md#getmystars) | **GET** /users/me/stars | スターチャンネルリストを取得
[**removeMyStar**](StarAPI.md#removemystar) | **DELETE** /users/me/stars/{channelId} | チャンネルをスターから削除します


# **addMyStar**
```swift
    open class func addMyStar(postStarRequest: PostStarRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

チャンネルをスターに追加

指定したチャンネルをスターチャンネルに追加します。 スター済みのチャンネルIDを指定した場合、204を返します。 不正なチャンネルIDを指定した場合、400を返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let postStarRequest = PostStarRequest(channelId: 123) // PostStarRequest |  (optional)

// チャンネルをスターに追加
StarAPI.addMyStar(postStarRequest: postStarRequest) { (response, error) in
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

# **getMyStars**
```swift
    open class func getMyStars(completion: @escaping (_ data: [UUID]?, _ error: Error?) -> Void)
```

スターチャンネルリストを取得

自分がスターしているチャンネルのUUIDの配列を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// スターチャンネルリストを取得
StarAPI.getMyStars() { (response, error) in
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

# **removeMyStar**
```swift
    open class func removeMyStar(channelId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

チャンネルをスターから削除します

既にスターから削除されているチャンネルを指定した場合は204を返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let channelId = 987 // UUID | チャンネルUUID

// チャンネルをスターから削除します
StarAPI.removeMyStar(channelId: channelId) { (response, error) in
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

