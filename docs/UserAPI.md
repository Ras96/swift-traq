# UserAPI

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUserTag**](UserAPI.md#addusertag) | **POST** /users/{userId}/tags | ユーザーにタグを追加
[**changeUserIcon**](UserAPI.md#changeusericon) | **PUT** /users/{userId}/icon | ユーザーのアイコン画像を変更します
[**changeUserPassword**](UserAPI.md#changeuserpassword) | **PUT** /users/{userId}/password | ユーザーのパスワードを変更
[**createUser**](UserAPI.md#createuser) | **POST** /users | ユーザーを登録
[**editUser**](UserAPI.md#edituser) | **PATCH** /users/{userId} | ユーザー情報を変更
[**editUserTag**](UserAPI.md#editusertag) | **PATCH** /users/{userId}/tags/{tagId} | ユーザーのタグを編集
[**getDirectMessages_0**](UserAPI.md#getdirectmessages_0) | **GET** /users/{userId}/messages | ダイレクトメッセージのリストを取得
[**getUser**](UserAPI.md#getuser) | **GET** /users/{userId} | ユーザー詳細情報を取得
[**getUserDMChannel**](UserAPI.md#getuserdmchannel) | **GET** /users/{userId}/dm-channel | DMチャンネル情報を取得
[**getUserIcon**](UserAPI.md#getusericon) | **GET** /users/{userId}/icon | ユーザーのアイコン画像を取得
[**getUserStats**](UserAPI.md#getuserstats) | **GET** /users/{userId}/stats | ユーザー統計情報を取得
[**getUserTags**](UserAPI.md#getusertags) | **GET** /users/{userId}/tags | ユーザーのタグリストを取得
[**getUsers**](UserAPI.md#getusers) | **GET** /users | ユーザーのリストを取得
[**postDirectMessage_0**](UserAPI.md#postdirectmessage_0) | **POST** /users/{userId}/messages | ダイレクトメッセージを送信
[**removeUserTag**](UserAPI.md#removeusertag) | **DELETE** /users/{userId}/tags/{tagId} | ユーザーからタグを削除します


# **addUserTag**
```swift
    open class func addUserTag(userId: UUID, postUserTagRequest: PostUserTagRequest? = nil, completion: @escaping (_ data: UserTag?, _ error: Error?) -> Void)
```

ユーザーにタグを追加

指定したユーザーに指定したタグを追加します。 Webhookユーザーにタグを追加することは出来ません。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let userId = 987 // UUID | ユーザーUUID
let postUserTagRequest = PostUserTagRequest(tag: "tag_example") // PostUserTagRequest |  (optional)

// ユーザーにタグを追加
UserAPI.addUserTag(userId: userId, postUserTagRequest: postUserTagRequest) { (response, error) in
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

# **changeUserIcon**
```swift
    open class func changeUserIcon(userId: UUID, file: URL, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

ユーザーのアイコン画像を変更します

指定したユーザーのアイコン画像を変更します。 管理者権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let userId = 987 // UUID | ユーザーUUID
let file = URL(string: "https://example.com")! // URL | アイコン画像(2MBまでのpng, jpeg, gif)

// ユーザーのアイコン画像を変更します
UserAPI.changeUserIcon(userId: userId, file: file) { (response, error) in
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
 **file** | **URL** | アイコン画像(2MBまでのpng, jpeg, gif) | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **changeUserPassword**
```swift
    open class func changeUserPassword(userId: UUID, putUserPasswordRequest: PutUserPasswordRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

ユーザーのパスワードを変更

指定したユーザーのパスワードを変更します。 管理者権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let userId = 987 // UUID | ユーザーUUID
let putUserPasswordRequest = PutUserPasswordRequest(newPassword: "newPassword_example") // PutUserPasswordRequest |  (optional)

// ユーザーのパスワードを変更
UserAPI.changeUserPassword(userId: userId, putUserPasswordRequest: putUserPasswordRequest) { (response, error) in
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
 **putUserPasswordRequest** | [**PutUserPasswordRequest**](PutUserPasswordRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUser**
```swift
    open class func createUser(postUserRequest: PostUserRequest? = nil, completion: @escaping (_ data: UserDetail?, _ error: Error?) -> Void)
```

ユーザーを登録

ユーザーを登録します。 管理者権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let postUserRequest = PostUserRequest(name: "name_example", password: "password_example") // PostUserRequest |  (optional)

// ユーザーを登録
UserAPI.createUser(postUserRequest: postUserRequest) { (response, error) in
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
 **postUserRequest** | [**PostUserRequest**](PostUserRequest.md) |  | [optional] 

### Return type

[**UserDetail**](UserDetail.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editUser**
```swift
    open class func editUser(userId: UUID, patchUserRequest: PatchUserRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

ユーザー情報を変更

指定したユーザーの情報を変更します。 管理者権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let userId = 987 // UUID | ユーザーUUID
let patchUserRequest = PatchUserRequest(displayName: "displayName_example", twitterId: "twitterId_example", state: UserAccountState(), role: "role_example") // PatchUserRequest |  (optional)

// ユーザー情報を変更
UserAPI.editUser(userId: userId, patchUserRequest: patchUserRequest) { (response, error) in
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
 **patchUserRequest** | [**PatchUserRequest**](PatchUserRequest.md) |  | [optional] 

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
import Traq

let userId = 987 // UUID | ユーザーUUID
let tagId = 987 // UUID | タグUUID
let patchUserTagRequest = PatchUserTagRequest(isLocked: false) // PatchUserTagRequest |  (optional)

// ユーザーのタグを編集
UserAPI.editUserTag(userId: userId, tagId: tagId, patchUserTagRequest: patchUserTagRequest) { (response, error) in
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

# **getDirectMessages_0**
```swift
    open class func getDirectMessages_0(userId: UUID, limit: Int? = nil, offset: Int? = nil, since: Date? = nil, until: Date? = nil, inclusive: Bool? = nil, order: Order_getDirectMessages_0? = nil, completion: @escaping (_ data: [Message]?, _ error: Error?) -> Void)
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
UserAPI.getDirectMessages_0(userId: userId, limit: limit, offset: offset, since: since, until: until, inclusive: inclusive, order: order) { (response, error) in
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

# **getUser**
```swift
    open class func getUser(userId: UUID, completion: @escaping (_ data: UserDetail?, _ error: Error?) -> Void)
```

ユーザー詳細情報を取得

指定したユーザーの詳細情報を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let userId = 987 // UUID | ユーザーUUID

// ユーザー詳細情報を取得
UserAPI.getUser(userId: userId) { (response, error) in
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

[**UserDetail**](UserDetail.md)

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
UserAPI.getUserDMChannel(userId: userId) { (response, error) in
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

# **getUserIcon**
```swift
    open class func getUserIcon(userId: UUID, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

ユーザーのアイコン画像を取得

指定したユーザーのアイコン画像を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let userId = 987 // UUID | ユーザーUUID

// ユーザーのアイコン画像を取得
UserAPI.getUserIcon(userId: userId) { (response, error) in
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

**URL**

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/jpeg, image/gif, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserStats**
```swift
    open class func getUserStats(userId: UUID, completion: @escaping (_ data: UserStats?, _ error: Error?) -> Void)
```

ユーザー統計情報を取得

指定したユーザーの統計情報を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let userId = 987 // UUID | ユーザーUUID

// ユーザー統計情報を取得
UserAPI.getUserStats(userId: userId) { (response, error) in
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

[**UserStats**](UserStats.md)

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
import Traq

let userId = 987 // UUID | ユーザーUUID

// ユーザーのタグリストを取得
UserAPI.getUserTags(userId: userId) { (response, error) in
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

# **getUsers**
```swift
    open class func getUsers(includeSuspended: Bool? = nil, name: String? = nil, completion: @escaping (_ data: [User]?, _ error: Error?) -> Void)
```

ユーザーのリストを取得

ユーザーのリストを取得します。 `include-suspended`を指定しない場合、レスポンスにはユーザーアカウント状態が\"1: 有効\"であるユーザーのみが含まれます。 `include-suspended`と`name`を同時に指定することはできません。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let includeSuspended = true // Bool | アカウントがアクティブでないユーザーを含め、全てのユーザーを取得するかどうか (optional) (default to false)
let name = "name_example" // String | 名前が一致するアカウントのみを取得する (optional)

// ユーザーのリストを取得
UserAPI.getUsers(includeSuspended: includeSuspended, name: name) { (response, error) in
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
 **includeSuspended** | **Bool** | アカウントがアクティブでないユーザーを含め、全てのユーザーを取得するかどうか | [optional] [default to false]
 **name** | **String** | 名前が一致するアカウントのみを取得する | [optional] 

### Return type

[**[User]**](User.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postDirectMessage_0**
```swift
    open class func postDirectMessage_0(userId: UUID, postMessageRequest: PostMessageRequest? = nil, completion: @escaping (_ data: Message?, _ error: Error?) -> Void)
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
UserAPI.postDirectMessage_0(userId: userId, postMessageRequest: postMessageRequest) { (response, error) in
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

# **removeUserTag**
```swift
    open class func removeUserTag(userId: UUID, tagId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

ユーザーからタグを削除します

既に存在しないタグを削除しようとした場合は204を返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let userId = 987 // UUID | ユーザーUUID
let tagId = 987 // UUID | タグUUID

// ユーザーからタグを削除します
UserAPI.removeUserTag(userId: userId, tagId: tagId) { (response, error) in
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

