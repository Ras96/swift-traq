# GroupAPI

All URIs are relative to *https://q.trap.jp/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUserGroupAdmin**](GroupAPI.md#addusergroupadmin) | **POST** /groups/{groupId}/admins | グループ管理者を追加
[**addUserGroupMember**](GroupAPI.md#addusergroupmember) | **POST** /groups/{groupId}/members | グループメンバーを追加
[**changeUserGroupIcon**](GroupAPI.md#changeusergroupicon) | **PUT** /groups/{groupId}/icon | ユーザーグループのアイコンを変更
[**createUserGroup**](GroupAPI.md#createusergroup) | **POST** /groups | ユーザーグループを作成
[**deleteUserGroup**](GroupAPI.md#deleteusergroup) | **DELETE** /groups/{groupId} | ユーザーグループを削除
[**editUserGroup**](GroupAPI.md#editusergroup) | **PATCH** /groups/{groupId} | ユーザーグループを編集
[**editUserGroupMember**](GroupAPI.md#editusergroupmember) | **PATCH** /groups/{groupId}/members/{userId} | グループメンバーを編集
[**getUserGroup**](GroupAPI.md#getusergroup) | **GET** /groups/{groupId} | ユーザーグループを取得
[**getUserGroupAdmins**](GroupAPI.md#getusergroupadmins) | **GET** /groups/{groupId}/admins | グループ管理者を取得
[**getUserGroupMembers**](GroupAPI.md#getusergroupmembers) | **GET** /groups/{groupId}/members | グループメンバーを取得
[**getUserGroups**](GroupAPI.md#getusergroups) | **GET** /groups | ユーザーグループのリストを取得
[**removeUserGroupAdmin**](GroupAPI.md#removeusergroupadmin) | **DELETE** /groups/{groupId}/admins/{userId} | グループ管理者を削除
[**removeUserGroupMember**](GroupAPI.md#removeusergroupmember) | **DELETE** /groups/{groupId}/members/{userId} | グループメンバーを削除


# **addUserGroupAdmin**
```swift
    open class func addUserGroupAdmin(groupId: UUID, postUserGroupAdminRequest: PostUserGroupAdminRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

グループ管理者を追加

指定したグループに管理者を追加します。 対象のユーザーグループの管理者権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let groupId = 987 // UUID | ユーザーグループUUID
let postUserGroupAdminRequest = PostUserGroupAdminRequest(id: 123) // PostUserGroupAdminRequest |  (optional)

// グループ管理者を追加
GroupAPI.addUserGroupAdmin(groupId: groupId, postUserGroupAdminRequest: postUserGroupAdminRequest) { (response, error) in
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
 **groupId** | **UUID** | ユーザーグループUUID | 
 **postUserGroupAdminRequest** | [**PostUserGroupAdminRequest**](PostUserGroupAdminRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addUserGroupMember**
```swift
    open class func addUserGroupMember(groupId: UUID, userGroupMember: UserGroupMember? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

グループメンバーを追加

指定したグループにメンバーを追加します。 対象のユーザーグループの管理者権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let groupId = 987 // UUID | ユーザーグループUUID
let userGroupMember = UserGroupMember(id: 123, role: "role_example") // UserGroupMember |  (optional)

// グループメンバーを追加
GroupAPI.addUserGroupMember(groupId: groupId, userGroupMember: userGroupMember) { (response, error) in
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
 **groupId** | **UUID** | ユーザーグループUUID | 
 **userGroupMember** | [**UserGroupMember**](UserGroupMember.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **changeUserGroupIcon**
```swift
    open class func changeUserGroupIcon(groupId: UUID, file: URL, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

ユーザーグループのアイコンを変更

ユーザーグループのアイコンを変更します。 対象のユーザーグループの管理者権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let groupId = 987 // UUID | ユーザーグループUUID
let file = URL(string: "https://example.com")! // URL | アイコン画像(1MBまでのpng, jpeg, gif)

// ユーザーグループのアイコンを変更
GroupAPI.changeUserGroupIcon(groupId: groupId, file: file) { (response, error) in
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
 **groupId** | **UUID** | ユーザーグループUUID | 
 **file** | **URL** | アイコン画像(1MBまでのpng, jpeg, gif) | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUserGroup**
```swift
    open class func createUserGroup(postUserGroupRequest: PostUserGroupRequest? = nil, completion: @escaping (_ data: UserGroup?, _ error: Error?) -> Void)
```

ユーザーグループを作成

ユーザーグループを作成します。 作成者は自動的にグループ管理者になります。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let postUserGroupRequest = PostUserGroupRequest(name: "name_example", description: "description_example", type: "type_example") // PostUserGroupRequest |  (optional)

// ユーザーグループを作成
GroupAPI.createUserGroup(postUserGroupRequest: postUserGroupRequest) { (response, error) in
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
 **postUserGroupRequest** | [**PostUserGroupRequest**](PostUserGroupRequest.md) |  | [optional] 

### Return type

[**UserGroup**](UserGroup.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserGroup**
```swift
    open class func deleteUserGroup(groupId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

ユーザーグループを削除

指定したユーザーグループを削除します。 対象のユーザーグループの管理者権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let groupId = 987 // UUID | ユーザーグループUUID

// ユーザーグループを削除
GroupAPI.deleteUserGroup(groupId: groupId) { (response, error) in
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
 **groupId** | **UUID** | ユーザーグループUUID | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editUserGroup**
```swift
    open class func editUserGroup(groupId: UUID, patchUserGroupRequest: PatchUserGroupRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

ユーザーグループを編集

指定したユーザーグループの情報を編集します。 対象のユーザーグループの管理者権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let groupId = 987 // UUID | ユーザーグループUUID
let patchUserGroupRequest = PatchUserGroupRequest(name: "name_example", description: "description_example", type: "type_example") // PatchUserGroupRequest |  (optional)

// ユーザーグループを編集
GroupAPI.editUserGroup(groupId: groupId, patchUserGroupRequest: patchUserGroupRequest) { (response, error) in
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
 **groupId** | **UUID** | ユーザーグループUUID | 
 **patchUserGroupRequest** | [**PatchUserGroupRequest**](PatchUserGroupRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editUserGroupMember**
```swift
    open class func editUserGroupMember(groupId: UUID, userId: UUID, patchGroupMemberRequest: PatchGroupMemberRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

グループメンバーを編集

指定したユーザーグループ内の指定したユーザーの属性を編集します。 対象のユーザーグループの管理者権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let groupId = 987 // UUID | ユーザーグループUUID
let userId = 987 // UUID | ユーザーUUID
let patchGroupMemberRequest = PatchGroupMemberRequest(role: "role_example") // PatchGroupMemberRequest |  (optional)

// グループメンバーを編集
GroupAPI.editUserGroupMember(groupId: groupId, userId: userId, patchGroupMemberRequest: patchGroupMemberRequest) { (response, error) in
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
 **groupId** | **UUID** | ユーザーグループUUID | 
 **userId** | **UUID** | ユーザーUUID | 
 **patchGroupMemberRequest** | [**PatchGroupMemberRequest**](PatchGroupMemberRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserGroup**
```swift
    open class func getUserGroup(groupId: UUID, completion: @escaping (_ data: UserGroup?, _ error: Error?) -> Void)
```

ユーザーグループを取得

指定したユーザーグループの情報を取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let groupId = 987 // UUID | ユーザーグループUUID

// ユーザーグループを取得
GroupAPI.getUserGroup(groupId: groupId) { (response, error) in
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
 **groupId** | **UUID** | ユーザーグループUUID | 

### Return type

[**UserGroup**](UserGroup.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserGroupAdmins**
```swift
    open class func getUserGroupAdmins(groupId: UUID, completion: @escaping (_ data: [UUID]?, _ error: Error?) -> Void)
```

グループ管理者を取得

指定したグループの管理者のリストを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let groupId = 987 // UUID | ユーザーグループUUID

// グループ管理者を取得
GroupAPI.getUserGroupAdmins(groupId: groupId) { (response, error) in
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
 **groupId** | **UUID** | ユーザーグループUUID | 

### Return type

**[UUID]**

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserGroupMembers**
```swift
    open class func getUserGroupMembers(groupId: UUID, completion: @escaping (_ data: [UserGroupMember]?, _ error: Error?) -> Void)
```

グループメンバーを取得

指定したグループのメンバーのリストを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let groupId = 987 // UUID | ユーザーグループUUID

// グループメンバーを取得
GroupAPI.getUserGroupMembers(groupId: groupId) { (response, error) in
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
 **groupId** | **UUID** | ユーザーグループUUID | 

### Return type

[**[UserGroupMember]**](UserGroupMember.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserGroups**
```swift
    open class func getUserGroups(completion: @escaping (_ data: [UserGroup]?, _ error: Error?) -> Void)
```

ユーザーグループのリストを取得

ユーザーグループのリストを取得します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq


// ユーザーグループのリストを取得
GroupAPI.getUserGroups() { (response, error) in
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

[**[UserGroup]**](UserGroup.md)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserGroupAdmin**
```swift
    open class func removeUserGroupAdmin(groupId: UUID, userId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

グループ管理者を削除

指定したユーザーグループから指定した管理者を削除します。 対象のユーザーグループの管理者権限が必要です。 グループから管理者が存在しなくなる場合は400エラーを返します。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let groupId = 987 // UUID | ユーザーグループUUID
let userId = 987 // UUID | ユーザーUUID

// グループ管理者を削除
GroupAPI.removeUserGroupAdmin(groupId: groupId, userId: userId) { (response, error) in
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
 **groupId** | **UUID** | ユーザーグループUUID | 
 **userId** | **UUID** | ユーザーUUID | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserGroupMember**
```swift
    open class func removeUserGroupMember(groupId: UUID, userId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

グループメンバーを削除

指定したユーザーグループから指定したユーザーを削除します。 既にグループから削除されているメンバーを指定した場合は204を返します。 対象のユーザーグループの管理者権限が必要です。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Traq

let groupId = 987 // UUID | ユーザーグループUUID
let userId = 987 // UUID | ユーザーUUID

// グループメンバーを削除
GroupAPI.removeUserGroupMember(groupId: groupId, userId: userId) { (response, error) in
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
 **groupId** | **UUID** | ユーザーグループUUID | 
 **userId** | **UUID** | ユーザーUUID | 

### Return type

Void (empty response body)

### Authorization

[OAuth2](../README.md#OAuth2), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

