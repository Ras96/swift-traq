# MeAPI

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMyStar**](MeAPI.md#addmystar) | **POST** /users/me/stars | チャンネルをスターに追加
[**addMyUserTag**](MeAPI.md#addmyusertag) | **POST** /users/me/tags | 自分にタグを追加
[**changeMyIcon**](MeAPI.md#changemyicon) | **PUT** /users/me/icon | 自分のアイコン画像を変更
[**changeMyNotifyCitation**](MeAPI.md#changemynotifycitation) | **PUT** /users/me/settings/notify-citation | メッセージ引用通知の設定情報を変更
[**changeMyPassword**](MeAPI.md#changemypassword) | **PUT** /users/me/password | 自分のパスワードを変更
[**editMe**](MeAPI.md#editme) | **PATCH** /users/me | 自分のユーザー情報を変更
[**editMyUserTag**](MeAPI.md#editmyusertag) | **PATCH** /users/me/tags/{tagId} | 自分のタグを編集
[**getMe**](MeAPI.md#getme) | **GET** /users/me | 自分のユーザー詳細を取得
[**getMyChannelSubscriptions**](MeAPI.md#getmychannelsubscriptions) | **GET** /users/me/subscriptions | 自分のチャンネル購読状態を取得
[**getMyExternalAccounts**](MeAPI.md#getmyexternalaccounts) | **GET** /users/me/ex-accounts | 外部ログインアカウント一覧を取得
[**getMyIcon**](MeAPI.md#getmyicon) | **GET** /users/me/icon | 自分のアイコン画像を取得
[**getMyNotifyCitation**](MeAPI.md#getmynotifycitation) | **GET** /users/me/settings/notify-citation | メッセージ引用通知の設定情報を取得
[**getMyQRCode**](MeAPI.md#getmyqrcode) | **GET** /users/me/qr-code | QRコードを取得
[**getMySessions**](MeAPI.md#getmysessions) | **GET** /users/me/sessions | 自分のログインセッションリストを取得
[**getMyStampHistory**](MeAPI.md#getmystamphistory) | **GET** /users/me/stamp-history | スタンプ履歴を取得
[**getMyStars**](MeAPI.md#getmystars) | **GET** /users/me/stars | スターチャンネルリストを取得
[**getMyTokens**](MeAPI.md#getmytokens) | **GET** /users/me/tokens | 有効トークンのリストを取得
[**getMyUnreadChannels**](MeAPI.md#getmyunreadchannels) | **GET** /users/me/unread | 未読チャンネルを取得
[**getMyUserTags**](MeAPI.md#getmyusertags) | **GET** /users/me/tags | 自分のタグリストを取得
[**getMyViewStates**](MeAPI.md#getmyviewstates) | **GET** /users/me/view-states | 自身のチャンネル閲覧状態一覧を取得
[**getOIDCUserInfo**](MeAPI.md#getoidcuserinfo) | **GET** /users/me/oidc | 自分のユーザー詳細を取得 (OIDC UserInfo)
[**getUserSettings**](MeAPI.md#getusersettings) | **GET** /users/me/settings | ユーザー設定を取得
[**linkExternalAccount**](MeAPI.md#linkexternalaccount) | **POST** /users/me/ex-accounts/link | 外部ログインアカウントを紐付ける
[**readChannel**](MeAPI.md#readchannel) | **DELETE** /users/me/unread/{channelId} | チャンネルを既読にする
[**registerFCMDevice**](MeAPI.md#registerfcmdevice) | **POST** /users/me/fcm-device | FCMデバイスを登録
[**removeMyStar**](MeAPI.md#removemystar) | **DELETE** /users/me/stars/{channelId} | チャンネルをスターから削除します
[**removeMyUserTag**](MeAPI.md#removemyusertag) | **DELETE** /users/me/tags/{tagId} | 自分からタグを削除します
[**revokeMySession**](MeAPI.md#revokemysession) | **DELETE** /users/me/sessions/{sessionId} | セッションを無効化
[**revokeMyToken**](MeAPI.md#revokemytoken) | **DELETE** /users/me/tokens/{tokenId} | トークンの認可を取り消す
[**setChannelSubscribeLevel**](MeAPI.md#setchannelsubscribelevel) | **PUT** /users/me/subscriptions/{channelId} | チャンネル購読レベルを設定
[**unlinkExternalAccount**](MeAPI.md#unlinkexternalaccount) | **POST** /users/me/ex-accounts/unlink | 外部ログインアカウントの紐付けを解除


# **addMyStar**
```swift
    open class func addMyStar(postStarRequest: PostStarRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

チャンネルをスターに追加

指定したチャンネルをスターチャンネルに追加します。 スター済みのチャンネルIDを指定した場合、204を返します。 不正なチャンネルIDを指定した場合、400を返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let postStarRequest = PostStarRequest(channelId: 123) // PostStarRequest |  (optional)

// チャンネルをスターに追加
MeAPI.addMyStar(postStarRequest: postStarRequest) { (response, error) in
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

# **addMyUserTag**
```swift
    open class func addMyUserTag(postUserTagRequest: PostUserTagRequest? = nil, completion: @escaping (_ data: UserTag?, _ error: Error?) -> Void)
```

自分にタグを追加

自分に新しくタグを追加します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let postUserTagRequest = PostUserTagRequest(tag: "tag_example") // PostUserTagRequest |  (optional)

// 自分にタグを追加
MeAPI.addMyUserTag(postUserTagRequest: postUserTagRequest) { (response, error) in
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

# **changeMyIcon**
```swift
    open class func changeMyIcon(file: URL, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

自分のアイコン画像を変更

自分のアイコン画像を変更します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let file = URL(string: "https://example.com")! // URL | アイコン画像(1MBまでのpng, jpeg, gif)

// 自分のアイコン画像を変更
MeAPI.changeMyIcon(file: file) { (response, error) in
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
 **file** | **URL** | アイコン画像(1MBまでのpng, jpeg, gif) | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **changeMyNotifyCitation**
```swift
    open class func changeMyNotifyCitation(putNotifyCitationRequest: PutNotifyCitationRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

メッセージ引用通知の設定情報を変更

メッセージ引用通知の設定情報を変更します

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let putNotifyCitationRequest = PutNotifyCitationRequest(notifyCitation: false) // PutNotifyCitationRequest |  (optional)

// メッセージ引用通知の設定情報を変更
MeAPI.changeMyNotifyCitation(putNotifyCitationRequest: putNotifyCitationRequest) { (response, error) in
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
 **putNotifyCitationRequest** | [**PutNotifyCitationRequest**](PutNotifyCitationRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **changeMyPassword**
```swift
    open class func changeMyPassword(putMyPasswordRequest: PutMyPasswordRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

自分のパスワードを変更

自身のパスワードを変更します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let putMyPasswordRequest = PutMyPasswordRequest(password: "password_example", newPassword: "newPassword_example") // PutMyPasswordRequest |  (optional)

// 自分のパスワードを変更
MeAPI.changeMyPassword(putMyPasswordRequest: putMyPasswordRequest) { (response, error) in
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
 **putMyPasswordRequest** | [**PutMyPasswordRequest**](PutMyPasswordRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editMe**
```swift
    open class func editMe(patchMeRequest: PatchMeRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

自分のユーザー情報を変更

自身のユーザー情報を変更します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let patchMeRequest = PatchMeRequest(displayName: "displayName_example", twitterId: "twitterId_example", bio: "bio_example", homeChannel: 123) // PatchMeRequest |  (optional)

// 自分のユーザー情報を変更
MeAPI.editMe(patchMeRequest: patchMeRequest) { (response, error) in
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
 **patchMeRequest** | [**PatchMeRequest**](PatchMeRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

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
import Traq

let tagId = 987 // UUID | タグUUID
let patchUserTagRequest = PatchUserTagRequest(isLocked: false) // PatchUserTagRequest |  (optional)

// 自分のタグを編集
MeAPI.editMyUserTag(tagId: tagId, patchUserTagRequest: patchUserTagRequest) { (response, error) in
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

# **getMe**
```swift
    open class func getMe(completion: @escaping (_ data: MyUserDetail?, _ error: Error?) -> Void)
```

自分のユーザー詳細を取得

自身のユーザー詳細情報を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq


// 自分のユーザー詳細を取得
MeAPI.getMe() { (response, error) in
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

[**MyUserDetail**](MyUserDetail.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyChannelSubscriptions**
```swift
    open class func getMyChannelSubscriptions(completion: @escaping (_ data: [UserSubscribeState]?, _ error: Error?) -> Void)
```

自分のチャンネル購読状態を取得

自身のチャンネル購読状態を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq


// 自分のチャンネル購読状態を取得
MeAPI.getMyChannelSubscriptions() { (response, error) in
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

[**[UserSubscribeState]**](UserSubscribeState.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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
MeAPI.getMyExternalAccounts() { (response, error) in
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

# **getMyIcon**
```swift
    open class func getMyIcon(completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

自分のアイコン画像を取得

自分のアイコン画像を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq


// 自分のアイコン画像を取得
MeAPI.getMyIcon() { (response, error) in
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

**URL**

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/jpeg, image/gif, image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyNotifyCitation**
```swift
    open class func getMyNotifyCitation(completion: @escaping (_ data: GetNotifyCitation?, _ error: Error?) -> Void)
```

メッセージ引用通知の設定情報を取得

メッセージ引用通知の設定情報を変更します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq


// メッセージ引用通知の設定情報を取得
MeAPI.getMyNotifyCitation() { (response, error) in
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

[**GetNotifyCitation**](GetNotifyCitation.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyQRCode**
```swift
    open class func getMyQRCode(token: Bool? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

QRコードを取得

自身のQRコードを取得します。 返されたQRコードまたはトークンは、発行後の5分間のみ有効です

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let token = true // Bool | 画像でなくトークン文字列で返すかどうか (optional) (default to false)

// QRコードを取得
MeAPI.getMyQRCode(token: token) { (response, error) in
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
 **token** | **Bool** | 画像でなくトークン文字列で返すかどうか | [optional] [default to false]

### Return type

**URL**

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png, text/plain

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
MeAPI.getMySessions() { (response, error) in
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

# **getMyStampHistory**
```swift
    open class func getMyStampHistory(limit: Int? = nil, completion: @escaping (_ data: [StampHistoryEntry]?, _ error: Error?) -> Void)
```

スタンプ履歴を取得

自分のスタンプ履歴を最大100件まで取得します。 結果は降順で返されます。  このAPIが返すスタンプ履歴は厳密な履歴ではありません。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let limit = 987 // Int | 件数 (optional) (default to 100)

// スタンプ履歴を取得
MeAPI.getMyStampHistory(limit: limit) { (response, error) in
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
 **limit** | **Int** | 件数 | [optional] [default to 100]

### Return type

[**[StampHistoryEntry]**](StampHistoryEntry.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
import Traq


// スターチャンネルリストを取得
MeAPI.getMyStars() { (response, error) in
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

# **getMyTokens**
```swift
    open class func getMyTokens(completion: @escaping (_ data: [ActiveOAuth2Token]?, _ error: Error?) -> Void)
```

有効トークンのリストを取得

有効な自分に発行されたOAuth2トークンのリストを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq


// 有効トークンのリストを取得
MeAPI.getMyTokens() { (response, error) in
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

# **getMyUnreadChannels**
```swift
    open class func getMyUnreadChannels(completion: @escaping (_ data: [UnreadChannel]?, _ error: Error?) -> Void)
```

未読チャンネルを取得

自分が現在未読のチャンネルの未読情報を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq


// 未読チャンネルを取得
MeAPI.getMyUnreadChannels() { (response, error) in
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

[**[UnreadChannel]**](UnreadChannel.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

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
import Traq


// 自分のタグリストを取得
MeAPI.getMyUserTags() { (response, error) in
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

# **getMyViewStates**
```swift
    open class func getMyViewStates(completion: @escaping (_ data: [MyChannelViewState]?, _ error: Error?) -> Void)
```

自身のチャンネル閲覧状態一覧を取得

自身のチャンネル閲覧状態一覧を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq


// 自身のチャンネル閲覧状態一覧を取得
MeAPI.getMyViewStates() { (response, error) in
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

[**[MyChannelViewState]**](MyChannelViewState.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOIDCUserInfo**
```swift
    open class func getOIDCUserInfo(completion: @escaping (_ data: OIDCUserInfo?, _ error: Error?) -> Void)
```

自分のユーザー詳細を取得 (OIDC UserInfo)

OIDCトークンを用いてユーザー詳細を取得します。 OIDC UserInfo Endpointです。 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq


// 自分のユーザー詳細を取得 (OIDC UserInfo)
MeAPI.getOIDCUserInfo() { (response, error) in
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

[**OIDCUserInfo**](OIDCUserInfo.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserSettings**
```swift
    open class func getUserSettings(completion: @escaping (_ data: UserSettings?, _ error: Error?) -> Void)
```

ユーザー設定を取得

ユーザー設定を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq


// ユーザー設定を取得
MeAPI.getUserSettings() { (response, error) in
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

[**UserSettings**](UserSettings.md)

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
MeAPI.linkExternalAccount(postLinkExternalAccount: postLinkExternalAccount) { (response, error) in
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

# **readChannel**
```swift
    open class func readChannel(channelId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

チャンネルを既読にする

自分が未読のチャンネルを既読にします。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let channelId = 987 // UUID | チャンネルUUID

// チャンネルを既読にする
MeAPI.readChannel(channelId: channelId) { (response, error) in
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

# **registerFCMDevice**
```swift
    open class func registerFCMDevice(postMyFCMDeviceRequest: PostMyFCMDeviceRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

FCMデバイスを登録

自身のFCMデバイスを登録します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let postMyFCMDeviceRequest = PostMyFCMDeviceRequest(token: "token_example") // PostMyFCMDeviceRequest |  (optional)

// FCMデバイスを登録
MeAPI.registerFCMDevice(postMyFCMDeviceRequest: postMyFCMDeviceRequest) { (response, error) in
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
 **postMyFCMDeviceRequest** | [**PostMyFCMDeviceRequest**](PostMyFCMDeviceRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

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
import Traq

let channelId = 987 // UUID | チャンネルUUID

// チャンネルをスターから削除します
MeAPI.removeMyStar(channelId: channelId) { (response, error) in
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

# **removeMyUserTag**
```swift
    open class func removeMyUserTag(tagId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

自分からタグを削除します

既に存在しないタグを削除しようとした場合は204を返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let tagId = 987 // UUID | タグUUID

// 自分からタグを削除します
MeAPI.removeMyUserTag(tagId: tagId) { (response, error) in
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
MeAPI.revokeMySession(sessionId: sessionId) { (response, error) in
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

# **revokeMyToken**
```swift
    open class func revokeMyToken(tokenId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

トークンの認可を取り消す

自分の指定したトークンの認可を取り消します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let tokenId = 987 // UUID | OAuth2トークンUUID

// トークンの認可を取り消す
MeAPI.revokeMyToken(tokenId: tokenId) { (response, error) in
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

# **setChannelSubscribeLevel**
```swift
    open class func setChannelSubscribeLevel(channelId: UUID, putChannelSubscribeLevelRequest: PutChannelSubscribeLevelRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

チャンネル購読レベルを設定

自身の指定したチャンネルの購読レベルを設定します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let channelId = 987 // UUID | チャンネルUUID
let putChannelSubscribeLevelRequest = PutChannelSubscribeLevelRequest(level: ChannelSubscribeLevel()) // PutChannelSubscribeLevelRequest |  (optional)

// チャンネル購読レベルを設定
MeAPI.setChannelSubscribeLevel(channelId: channelId, putChannelSubscribeLevelRequest: putChannelSubscribeLevelRequest) { (response, error) in
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
 **putChannelSubscribeLevelRequest** | [**PutChannelSubscribeLevelRequest**](PutChannelSubscribeLevelRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
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
MeAPI.unlinkExternalAccount(postUnlinkExternalAccount: postUnlinkExternalAccount) { (response, error) in
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

