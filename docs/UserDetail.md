# UserDetail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | ユーザーUUID | 
**state** | [**UserAccountState**](UserAccountState.md) |  | 
**bot** | **Bool** | BOTかどうか | 
**iconFileId** | **UUID** | アイコンファイルUUID | 
**displayName** | **String** | ユーザー表示名 | 
**name** | **String** | ユーザー名 | 
**twitterId** | **String** | Twitter ID | 
**lastOnline** | **Date** | 最終オンライン日時 | 
**updatedAt** | **Date** | 更新日時 | 
**tags** | [UserTag] | タグリスト | 
**groups** | **[UUID]** | 所属グループのUUIDの配列 | 
**bio** | **String** | 自己紹介(biography) | 
**homeChannel** | **UUID** | ホームチャンネル | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


