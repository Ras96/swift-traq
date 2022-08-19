# GetBot200Response

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | BOT UUID | 
**botUserId** | **UUID** | BOTユーザーUUID | 
**description** | **String** | 説明 | 
**developerId** | **UUID** | BOT開発者UUID | 
**subscribeEvents** | **[String]** | BOTが購読しているイベントの配列 | 
**mode** | [**BotMode**](BotMode.md) |  | 
**state** | [**BotState**](BotState.md) |  | 
**createdAt** | **Date** | 作成日時 | 
**updatedAt** | **Date** | 更新日時 | 
**tokens** | [**BotTokens**](BotTokens.md) |  | 
**endpoint** | **String** | BOTサーバーエンドポイント | 
**privileged** | **Bool** | 特権BOTかどうか | 
**channels** | **[UUID]** | BOTが参加しているチャンネルのUUID配列 | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


