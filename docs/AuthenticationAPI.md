# AuthenticationAPI

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMyExternalAccounts**](AuthenticationAPI.md#getmyexternalaccounts) | **GET** /users/me/ex-accounts | 外部ログインアカウント一覧を取得
[**getMySessions**](AuthenticationAPI.md#getmysessions) | **GET** /users/me/sessions | 自分のログインセッションリストを取得
[**linkExternalAccount**](AuthenticationAPI.md#linkexternalaccount) | **POST** /users/me/ex-accounts/link | 外部ログインアカウントを紐付ける
[**login**](AuthenticationAPI.md#login) | **POST** /login | ログイン
[**logout**](AuthenticationAPI.md#logout) | **POST** /logout | ログアウト
[**revokeMySession**](AuthenticationAPI.md#revokemysession) | **DELETE** /users/me/sessions/{sessionId} | セッションを無効化
[**unlinkExternalAccount**](AuthenticationAPI.md#unlinkexternalaccount) | **POST** /users/me/ex-accounts/unlink | 外部ログインアカウントの紐付けを解除


# **getMyExternalAccounts**
```swift
    open class func getMyExternalAccounts(completion: @escaping (_ data: [ExternalProviderUser]?, _ error: Error?) -> Void)
```

外部ログインアカウント一覧を取得

自分に紐付けられている外部ログインアカウント一覧を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq


// 外部ログインアカウント一覧を取得
AuthenticationAPI.getMyExternalAccounts() { (response, error) in
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

[**[ExternalProviderUser]**](ExternalProviderUser.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMySessions**
```swift
    open class func getMySessions(completion: @escaping (_ data: [LoginSession]?, _ error: Error?) -> Void)
```

自分のログインセッションリストを取得

自分のログインセッションのリストを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq


// 自分のログインセッションリストを取得
AuthenticationAPI.getMySessions() { (response, error) in
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

[**[LoginSession]**](LoginSession.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkExternalAccount**
```swift
    open class func linkExternalAccount(postLinkExternalAccount: PostLinkExternalAccount? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

外部ログインアカウントを紐付ける

自分に外部ログインアカウントを紐付けます。 指定した`providerName`がサーバー側で有効である必要があります。 リクエストが受理された場合、外部サービスの認証画面にリダイレクトされ、認証される必要があります。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let postLinkExternalAccount = PostLinkExternalAccount(providerName: "providerName_example") // PostLinkExternalAccount |  (optional)

// 外部ログインアカウントを紐付ける
AuthenticationAPI.linkExternalAccount(postLinkExternalAccount: postLinkExternalAccount) { (response, error) in
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
 **postLinkExternalAccount** | [**PostLinkExternalAccount**](PostLinkExternalAccount.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login**
```swift
    open class func login(redirect: String? = nil, postLoginRequest: PostLoginRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

ログイン

ログインします。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let redirect = "redirect_example" // String | リダイレクト先 (optional)
let postLoginRequest = PostLoginRequest(name: "name_example", password: "password_example") // PostLoginRequest |  (optional)

// ログイン
AuthenticationAPI.login(redirect: redirect, postLoginRequest: postLoginRequest) { (response, error) in
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
 **redirect** | **String** | リダイレクト先 | [optional] 
 **postLoginRequest** | [**PostLoginRequest**](PostLoginRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
```swift
    open class func logout(redirect: String? = nil, all: Bool? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

ログアウト

ログアウトします。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let redirect = "redirect_example" // String | リダイレクト先 (optional)
let all = true // Bool | 全てのセッションでログアウトするかどうか (optional) (default to false)

// ログアウト
AuthenticationAPI.logout(redirect: redirect, all: all) { (response, error) in
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
 **redirect** | **String** | リダイレクト先 | [optional] 
 **all** | **Bool** | 全てのセッションでログアウトするかどうか | [optional] [default to false]

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeMySession**
```swift
    open class func revokeMySession(sessionId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

セッションを無効化

指定した自分のセッションを無効化(ログアウト)します。 既に存在しない・無効化されているセッションを指定した場合も`204`を返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let sessionId = 987 // UUID | セッションUUID

// セッションを無効化
AuthenticationAPI.revokeMySession(sessionId: sessionId) { (response, error) in
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
 **sessionId** | **UUID** | セッションUUID | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlinkExternalAccount**
```swift
    open class func unlinkExternalAccount(postUnlinkExternalAccount: PostUnlinkExternalAccount? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

外部ログインアカウントの紐付けを解除

自分に紐付けられている外部ログインアカウントの紐付けを解除します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let postUnlinkExternalAccount = PostUnlinkExternalAccount(providerName: "providerName_example") // PostUnlinkExternalAccount |  (optional)

// 外部ログインアカウントの紐付けを解除
AuthenticationAPI.unlinkExternalAccount(postUnlinkExternalAccount: postUnlinkExternalAccount) { (response, error) in
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
 **postUnlinkExternalAccount** | [**PostUnlinkExternalAccount**](PostUnlinkExternalAccount.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

