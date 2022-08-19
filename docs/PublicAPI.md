# PublicAPI

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPublicUserIcon**](PublicAPI.md#getpublicusericon) | **GET** /public/icon/{username} | ユーザーのアイコン画像を取得
[**getServerVersion**](PublicAPI.md#getserverversion) | **GET** /version | バージョンを取得


# **getPublicUserIcon**
```swift
    open class func getPublicUserIcon(username: String, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

ユーザーのアイコン画像を取得

ユーザーのアイコン画像を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let username = "username_example" // String | ユーザー名

// ユーザーのアイコン画像を取得
PublicAPI.getPublicUserIcon(username: username) { (response, error) in
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
 **username** | **String** | ユーザー名 | 

### Return type

**URL**

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/jpeg, image/gif, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getServerVersion**
```swift
    open class func getServerVersion(completion: @escaping (_ data: Version?, _ error: Error?) -> Void)
```

バージョンを取得

サーバーバージョン及びサーバーフラグ情報を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// バージョンを取得
PublicAPI.getServerVersion() { (response, error) in
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

[**Version**](Version.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

