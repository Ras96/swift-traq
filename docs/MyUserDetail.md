# MyUserDetail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | ユーザーUUID | 
**bio** | **String** | 自己紹介(biography) | 
**groups** | **[UUID]** | 所属グループのUUIDの配列 | 
**tags** | [UserTag] | タグリスト | 
**updatedAt** | **Date** | 更新日時 | 
**lastOnline** | **Date** | 最終オンライン日時 | 
**twitterId** | **String** | Twitter ID | 
**name** | **String** | ユーザー名 | 
**displayName** | **String** | ユーザー表示名 | 
**iconFileId** | **UUID** | アイコンファイルUUID | 
**bot** | **Bool** | BOTかどうか | 
**state** | [**UserAccountState**](UserAccountState.md) |  | 
**permissions** | [UserPermission] | 所有している権限の配列 | 
**homeChannel** | **UUID** | ホームチャンネル | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


