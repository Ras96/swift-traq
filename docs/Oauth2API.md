# Oauth2API

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createClient**](Oauth2API.md#createclient) | **POST** /clients | OAuth2クライアントを作成
[**deleteClient**](Oauth2API.md#deleteclient) | **DELETE** /clients/{clientId} | OAuth2クライアントを削除
[**editClient**](Oauth2API.md#editclient) | **PATCH** /clients/{clientId} | OAuth2クライアント情報を変更
[**getClient**](Oauth2API.md#getclient) | **GET** /clients/{clientId} | OAuth2クライアント情報を取得
[**getClients**](Oauth2API.md#getclients) | **GET** /clients | OAuth2クライアントのリストを取得
[**getMyTokens**](Oauth2API.md#getmytokens) | **GET** /users/me/tokens | 有効トークンのリストを取得
[**getOAuth2Authorize**](Oauth2API.md#getoauth2authorize) | **GET** /oauth2/authorize | OAuth2 認可エンドポイント
[**postOAuth2Authorize**](Oauth2API.md#postoauth2authorize) | **POST** /oauth2/authorize | OAuth2 認可エンドポイント
[**postOAuth2AuthorizeDecide**](Oauth2API.md#postoauth2authorizedecide) | **POST** /oauth2/authorize/decide | OAuth2 認可承諾API
[**postOAuth2Token**](Oauth2API.md#postoauth2token) | **POST** /oauth2/token | OAuth2 トークンエンドポイント
[**revokeMyToken**](Oauth2API.md#revokemytoken) | **DELETE** /users/me/tokens/{tokenId} | トークンの認可を取り消す
[**revokeOAuth2Token**](Oauth2API.md#revokeoauth2token) | **POST** /oauth2/revoke | OAuth2 トークン無効化エンドポイント


# **createClient**
```swift
    open class func createClient(postClientRequest: PostClientRequest? = nil, completion: @escaping (_ data: OAuth2ClientDetail?, _ error: Error?) -> Void)
```

OAuth2クライアントを作成

OAuth2クライアントを作成します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let postClientRequest = PostClientRequest(name: "name_example", callbackUrl: "callbackUrl_example", scopes: [OAuth2Scope()], description: "description_example") // PostClientRequest |  (optional)

// OAuth2クライアントを作成
Oauth2API.createClient(postClientRequest: postClientRequest) { (response, error) in
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
 **postClientRequest** | [**PostClientRequest**](PostClientRequest.md) |  | [optional] 

### Return type

[**OAuth2ClientDetail**](OAuth2ClientDetail.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteClient**
```swift
    open class func deleteClient(clientId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

OAuth2クライアントを削除

指定したOAuth2クライアントを削除します。 対象のクライアントの管理権限が必要です。正常に削除された場合、このクライアントに対する認可は全て取り消されます。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | OAuth2クライアントUUID

// OAuth2クライアントを削除
Oauth2API.deleteClient(clientId: clientId) { (response, error) in
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
 **clientId** | **String** | OAuth2クライアントUUID | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editClient**
```swift
    open class func editClient(clientId: String, patchClientRequest: PatchClientRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

OAuth2クライアント情報を変更

指定したOAuth2クライアントの情報を変更します。 対象のクライアントの管理権限が必要です。 クライアント開発者UUIDを変更した場合は、変更先ユーザーにクライアント管理権限が移譲され、自分自身は権限を失います。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | OAuth2クライアントUUID
let patchClientRequest = PatchClientRequest(name: "name_example", description: "description_example", callbackUrl: "callbackUrl_example", developerId: 123) // PatchClientRequest |  (optional)

// OAuth2クライアント情報を変更
Oauth2API.editClient(clientId: clientId, patchClientRequest: patchClientRequest) { (response, error) in
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
 **clientId** | **String** | OAuth2クライアントUUID | 
 **patchClientRequest** | [**PatchClientRequest**](PatchClientRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClient**
```swift
    open class func getClient(clientId: String, detail: Bool? = nil, completion: @escaping (_ data: GetClient200Response?, _ error: Error?) -> Void)
```

OAuth2クライアント情報を取得

指定したOAuth2クライアントの情報を取得します。 詳細情報の取得には対象のクライアントの管理権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | OAuth2クライアントUUID
let detail = true // Bool | 詳細情報を含めるかどうか (optional) (default to false)

// OAuth2クライアント情報を取得
Oauth2API.getClient(clientId: clientId, detail: detail) { (response, error) in
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
 **clientId** | **String** | OAuth2クライアントUUID | 
 **detail** | **Bool** | 詳細情報を含めるかどうか | [optional] [default to false]

### Return type

[**GetClient200Response**](GetClient200Response.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClients**
```swift
    open class func getClients(all: Bool? = nil, completion: @escaping (_ data: [OAuth2Client]?, _ error: Error?) -> Void)
```

OAuth2クライアントのリストを取得

自身が開発者のOAuth2クライアントのリストを取得します。 `all`が`true`の場合、全開発者の全クライアントのリストを返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let all = true // Bool | 全てのクライアントを取得するかどうか (optional) (default to false)

// OAuth2クライアントのリストを取得
Oauth2API.getClients(all: all) { (response, error) in
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
 **all** | **Bool** | 全てのクライアントを取得するかどうか | [optional] [default to false]

### Return type

[**[OAuth2Client]**](OAuth2Client.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyTokens**
```swift
    open class func getMyTokens(completion: @escaping (_ data: [ActiveOAuth2Token]?, _ error: Error?) -> Void)
```

有効トークンのリストを取得

有効な自分に発行されたOAuth2トークンのリストを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// 有効トークンのリストを取得
Oauth2API.getMyTokens() { (response, error) in
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

[**[ActiveOAuth2Token]**](ActiveOAuth2Token.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOAuth2Authorize**
```swift
    open class func getOAuth2Authorize(clientId: String, responseType: OAuth2ResponseType? = nil, redirectUri: String? = nil, scope: String? = nil, state: String? = nil, codeChallenge: String? = nil, codeChallengeMethod: String? = nil, nonce: String? = nil, prompt: OAuth2Prompt? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

OAuth2 認可エンドポイント

OAuth2 認可エンドポイント

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | 
let responseType = OAuth2ResponseType() // OAuth2ResponseType |  (optional)
let redirectUri = "redirectUri_example" // String |  (optional)
let scope = "scope_example" // String |  (optional)
let state = "state_example" // String |  (optional)
let codeChallenge = "codeChallenge_example" // String |  (optional)
let codeChallengeMethod = "codeChallengeMethod_example" // String |  (optional)
let nonce = "nonce_example" // String |  (optional)
let prompt = OAuth2Prompt() // OAuth2Prompt |  (optional)

// OAuth2 認可エンドポイント
Oauth2API.getOAuth2Authorize(clientId: clientId, responseType: responseType, redirectUri: redirectUri, scope: scope, state: state, codeChallenge: codeChallenge, codeChallengeMethod: codeChallengeMethod, nonce: nonce, prompt: prompt) { (response, error) in
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
 **clientId** | **String** |  | 
 **responseType** | [**OAuth2ResponseType**](.md) |  | [optional] 
 **redirectUri** | **String** |  | [optional] 
 **scope** | **String** |  | [optional] 
 **state** | **String** |  | [optional] 
 **codeChallenge** | **String** |  | [optional] 
 **codeChallengeMethod** | **String** |  | [optional] 
 **nonce** | **String** |  | [optional] 
 **prompt** | [**OAuth2Prompt**](.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postOAuth2Authorize**
```swift
    open class func postOAuth2Authorize(clientId: String, responseType: OAuth2ResponseType? = nil, redirectUri: String? = nil, scope: String? = nil, state: String? = nil, codeChallenge: String? = nil, codeChallengeMethod: String? = nil, nonce: String? = nil, prompt: OAuth2Prompt? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

OAuth2 認可エンドポイント

OAuth2 認可エンドポイント

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let clientId = "clientId_example" // String | 
let responseType = OAuth2ResponseType() // OAuth2ResponseType |  (optional)
let redirectUri = "redirectUri_example" // String |  (optional)
let scope = "scope_example" // String |  (optional)
let state = "state_example" // String |  (optional)
let codeChallenge = "codeChallenge_example" // String |  (optional)
let codeChallengeMethod = "codeChallengeMethod_example" // String |  (optional)
let nonce = "nonce_example" // String |  (optional)
let prompt = OAuth2Prompt() // OAuth2Prompt |  (optional)

// OAuth2 認可エンドポイント
Oauth2API.postOAuth2Authorize(clientId: clientId, responseType: responseType, redirectUri: redirectUri, scope: scope, state: state, codeChallenge: codeChallenge, codeChallengeMethod: codeChallengeMethod, nonce: nonce, prompt: prompt) { (response, error) in
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
 **clientId** | **String** |  | 
 **responseType** | [**OAuth2ResponseType**](OAuth2ResponseType.md) |  | [optional] 
 **redirectUri** | **String** |  | [optional] 
 **scope** | **String** |  | [optional] 
 **state** | **String** |  | [optional] 
 **codeChallenge** | **String** |  | [optional] 
 **codeChallengeMethod** | **String** |  | [optional] 
 **nonce** | **String** |  | [optional] 
 **prompt** | [**OAuth2Prompt**](OAuth2Prompt.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postOAuth2AuthorizeDecide**
```swift
    open class func postOAuth2AuthorizeDecide(submit: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

OAuth2 認可承諾API

OAuth2 認可承諾

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let submit = "submit_example" // String | 承諾する場合は\\\"approve\\\"

// OAuth2 認可承諾API
Oauth2API.postOAuth2AuthorizeDecide(submit: submit) { (response, error) in
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
 **submit** | **String** | 承諾する場合は\\\&quot;approve\\\&quot; | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postOAuth2Token**
```swift
    open class func postOAuth2Token(grantType: String, code: String? = nil, redirectUri: String? = nil, clientId: String? = nil, codeVerifier: String? = nil, username: String? = nil, password: String? = nil, scope: String? = nil, refreshToken: String? = nil, clientSecret: String? = nil, completion: @escaping (_ data: OAuth2Token?, _ error: Error?) -> Void)
```

OAuth2 トークンエンドポイント

OAuth2 トークンエンドポイント

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let grantType = "grantType_example" // String | 
let code = "code_example" // String |  (optional)
let redirectUri = "redirectUri_example" // String |  (optional)
let clientId = "clientId_example" // String |  (optional)
let codeVerifier = "codeVerifier_example" // String |  (optional)
let username = "username_example" // String |  (optional)
let password = "password_example" // String |  (optional)
let scope = "scope_example" // String |  (optional)
let refreshToken = "refreshToken_example" // String |  (optional)
let clientSecret = "clientSecret_example" // String |  (optional)

// OAuth2 トークンエンドポイント
Oauth2API.postOAuth2Token(grantType: grantType, code: code, redirectUri: redirectUri, clientId: clientId, codeVerifier: codeVerifier, username: username, password: password, scope: scope, refreshToken: refreshToken, clientSecret: clientSecret) { (response, error) in
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
 **grantType** | **String** |  | 
 **code** | **String** |  | [optional] 
 **redirectUri** | **String** |  | [optional] 
 **clientId** | **String** |  | [optional] 
 **codeVerifier** | **String** |  | [optional] 
 **username** | **String** |  | [optional] 
 **password** | **String** |  | [optional] 
 **scope** | **String** |  | [optional] 
 **refreshToken** | **String** |  | [optional] 
 **clientSecret** | **String** |  | [optional] 

### Return type

[**OAuth2Token**](OAuth2Token.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeMyToken**
```swift
    open class func revokeMyToken(tokenId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

トークンの認可を取り消す

自分の指定したトークンの認可を取り消します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let tokenId = 987 // UUID | OAuth2トークンUUID

// トークンの認可を取り消す
Oauth2API.revokeMyToken(tokenId: tokenId) { (response, error) in
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
 **tokenId** | **UUID** | OAuth2トークンUUID | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeOAuth2Token**
```swift
    open class func revokeOAuth2Token(token: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

OAuth2 トークン無効化エンドポイント

OAuth2 トークン無効化エンドポイント

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let token = "token_example" // String | 無効化するOAuth2トークンまたはOAuth2リフレッシュトークン

// OAuth2 トークン無効化エンドポイント
Oauth2API.revokeOAuth2Token(token: token) { (response, error) in
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
 **token** | **String** | 無効化するOAuth2トークンまたはOAuth2リフレッシュトークン | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

