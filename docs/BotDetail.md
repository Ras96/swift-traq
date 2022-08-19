# BotDetail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | BOT UUID | 
**updatedAt** | **Date** | 更新日時 | 
**createdAt** | **Date** | 作成日時 | 
**mode** | [**BotMode**](BotMode.md) |  | 
**state** | [**BotState**](BotState.md) |  | 
**subscribeEvents** | **[String]** | BOTが購読しているイベントの配列 | 
**developerId** | **UUID** | BOT開発者UUID | 
**description** | **String** | 説明 | 
**botUserId** | **UUID** | BOTユーザーUUID | 
**tokens** | [**BotTokens**](BotTokens.md) |  | 
**endpoint** | **String** | BOTサーバーエンドポイント | 
**privileged** | **Bool** | 特権BOTかどうか | 
**channels** | **[UUID]** | BOTが参加しているチャンネルのUUID配列 | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


