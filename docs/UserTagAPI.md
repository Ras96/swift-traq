# UserTagAPI

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMyUserTag**](UserTagAPI.md#addmyusertag) | **POST** /users/me/tags | 自分にタグを追加
[**addUserTag**](UserTagAPI.md#addusertag) | **POST** /users/{userId}/tags | ユーザーにタグを追加
[**editMyUserTag**](UserTagAPI.md#editmyusertag) | **PATCH** /users/me/tags/{tagId} | 自分のタグを編集
[**editUserTag**](UserTagAPI.md#editusertag) | **PATCH** /users/{userId}/tags/{tagId} | ユーザーのタグを編集
[**getMyUserTags**](UserTagAPI.md#getmyusertags) | **GET** /users/me/tags | 自分のタグリストを取得
[**getTag**](UserTagAPI.md#gettag) | **GET** /tags/{tagId} | タグ情報を取得
[**getUserTags**](UserTagAPI.md#getusertags) | **GET** /users/{userId}/tags | ユーザーのタグリストを取得
[**removeMyUserTag**](UserTagAPI.md#removemyusertag) | **DELETE** /users/me/tags/{tagId} | 自分からタグを削除します
[**removeUserTag**](UserTagAPI.md#removeusertag) | **DELETE** /users/{userId}/tags/{tagId} | ユーザーからタグを削除します


# **addMyUserTag**
```swift
    open class func addMyUserTag(postUserTagRequest: PostUserTagRequest? = nil, completion: @escaping (_ data: UserTag?, _ error: Error?) -> Void)
```

自分にタグを追加

自分に新しくタグを追加します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let postUserTagRequest = PostUserTagRequest(tag: "tag_example") // PostUserTagRequest |  (optional)

// 自分にタグを追加
UserTagAPI.addMyUserTag(postUserTagRequest: postUserTagRequest) { (response, error) in
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
 **postUserTagRequest** | [**PostUserTagRequest**](PostUserTagRequest.md) |  | [optional] 

### Return type

[**UserTag**](UserTag.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addUserTag**
```swift
    open class func addUserTag(userId: UUID, postUserTagRequest: PostUserTagRequest? = nil, completion: @escaping (_ data: UserTag?, _ error: Error?) -> Void)
```

ユーザーにタグを追加

指定したユーザーに指定したタグを追加します。 Webhookユーザーにタグを追加することは出来ません。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = 987 // UUID | ユーザーUUID
let postUserTagRequest = PostUserTagRequest(tag: "tag_example") // PostUserTagRequest |  (optional)

// ユーザーにタグを追加
UserTagAPI.addUserTag(userId: userId, postUserTagRequest: postUserTagRequest) { (response, error) in
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
 **postUserTagRequest** | [**PostUserTagRequest**](PostUserTagRequest.md) |  | [optional] 

### Return type

[**UserTag**](UserTag.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editMyUserTag**
```swift
    open class func editMyUserTag(tagId: UUID, patchUserTagRequest: PatchUserTagRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

自分のタグを編集

自分の指定したタグの状態を変更します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tagId = 987 // UUID | タグUUID
let patchUserTagRequest = PatchUserTagRequest(isLocked: false) // PatchUserTagRequest |  (optional)

// 自分のタグを編集
UserTagAPI.editMyUserTag(tagId: tagId, patchUserTagRequest: patchUserTagRequest) { (response, error) in
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
 **tagId** | **UUID** | タグUUID | 
 **patchUserTagRequest** | [**PatchUserTagRequest**](PatchUserTagRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editUserTag**
```swift
    open class func editUserTag(userId: UUID, tagId: UUID, patchUserTagRequest: PatchUserTagRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

ユーザーのタグを編集

指定したユーザーの指定したタグの状態を変更します。 他人の状態は変更できません。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = 987 // UUID | ユーザーUUID
let tagId = 987 // UUID | タグUUID
let patchUserTagRequest = PatchUserTagRequest(isLocked: false) // PatchUserTagRequest |  (optional)

// ユーザーのタグを編集
UserTagAPI.editUserTag(userId: userId, tagId: tagId, patchUserTagRequest: patchUserTagRequest) { (response, error) in
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
 **tagId** | **UUID** | タグUUID | 
 **patchUserTagRequest** | [**PatchUserTagRequest**](PatchUserTagRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyUserTags**
```swift
    open class func getMyUserTags(completion: @escaping (_ data: [UserTag]?, _ error: Error?) -> Void)
```

自分のタグリストを取得

自分に付けられているタグの配列を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// 自分のタグリストを取得
UserTagAPI.getMyUserTags() { (response, error) in
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

[**[UserTag]**](UserTag.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTag**
```swift
    open class func getTag(tagId: UUID, completion: @escaping (_ data: Tag?, _ error: Error?) -> Void)
```

タグ情報を取得

指定したタグの情報を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tagId = 987 // UUID | タグUUID

// タグ情報を取得
UserTagAPI.getTag(tagId: tagId) { (response, error) in
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
 **tagId** | **UUID** | タグUUID | 

### Return type

[**Tag**](Tag.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserTags**
```swift
    open class func getUserTags(userId: UUID, completion: @escaping (_ data: [UserTag]?, _ error: Error?) -> Void)
```

ユーザーのタグリストを取得

指定したユーザーのタグリストを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = 987 // UUID | ユーザーUUID

// ユーザーのタグリストを取得
UserTagAPI.getUserTags(userId: userId) { (response, error) in
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

### Return type

[**[UserTag]**](UserTag.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeMyUserTag**
```swift
    open class func removeMyUserTag(tagId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

自分からタグを削除します

既に存在しないタグを削除しようとした場合は204を返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tagId = 987 // UUID | タグUUID

// 自分からタグを削除します
UserTagAPI.removeMyUserTag(tagId: tagId) { (response, error) in
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
 **tagId** | **UUID** | タグUUID | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserTag**
```swift
    open class func removeUserTag(userId: UUID, tagId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

ユーザーからタグを削除します

既に存在しないタグを削除しようとした場合は204を返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = 987 // UUID | ユーザーUUID
let tagId = 987 // UUID | タグUUID

// ユーザーからタグを削除します
UserTagAPI.removeUserTag(userId: userId, tagId: tagId) { (response, error) in
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
 **tagId** | **UUID** | タグUUID | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

