# FileInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | ファイルUUID | 
**name** | **String** | ファイル名 | 
**mime** | **String** | MIMEタイプ | 
**size** | **Int64** | ファイルサイズ | 
**md5** | **String** | MD5ハッシュ | 
**isAnimatedImage** | **Bool** | アニメーション画像かどうか | 
**createdAt** | **Date** | アップロード日時 | 
**thumbnails** | [ThumbnailInfo] |  | 
**thumbnail** | [**FileInfoThumbnail**](FileInfoThumbnail.md) |  | 
**channelId** | **UUID** | 属しているチャンネルUUID | 
**uploaderId** | **UUID** | アップロード者UUID | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


