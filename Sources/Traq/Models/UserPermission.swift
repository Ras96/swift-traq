//
// UserPermission.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.UserPermission")
public typealias UserPermission = TraqAPI.UserPermission

public extension TraqAPI {
    /** ユーザー権限 */
    enum UserPermission: String, Codable, CaseIterable {
        case GetWebhook = "get_webhook"
        case CreateWebhook = "create_webhook"
        case EditWebhook = "edit_webhook"
        case DeleteWebhook = "delete_webhook"
        case AccessOthersWebhook = "access_others_webhook"
        case GetBot = "get_bot"
        case CreateBot = "create_bot"
        case EditBot = "edit_bot"
        case DeleteBot = "delete_bot"
        case AccessOthersBot = "access_others_bot"
        case BotActionJoinChannel = "bot_action_join_channel"
        case BotActionLeaveChannel = "bot_action_leave_channel"
        case CreateChannel = "create_channel"
        case GetChannel = "get_channel"
        case EditChannel = "edit_channel"
        case DeleteChannel = "delete_channel"
        case ChangeParentChannel = "change_parent_channel"
        case EditChannelTopic = "edit_channel_topic"
        case GetChannelStar = "get_channel_star"
        case EditChannelStar = "edit_channel_star"
        case GetMyTokens = "get_my_tokens"
        case RevokeMyToken = "revoke_my_token"
        case GetClients = "get_clients"
        case CreateClient = "create_client"
        case EditMyClient = "edit_my_client"
        case DeleteMyClient = "delete_my_client"
        case ManageOthersClient = "manage_others_client"
        case UploadFile = "upload_file"
        case DownloadFile = "download_file"
        case DeleteFile = "delete_file"
        case GetMessage = "get_message"
        case PostMessage = "post_message"
        case EditMessage = "edit_message"
        case DeleteMessage = "delete_message"
        case ReportMessage = "report_message"
        case GetMessageReports = "get_message_reports"
        case CreateMessagePin = "create_message_pin"
        case DeleteMessagePin = "delete_message_pin"
        case GetChannelSubscription = "get_channel_subscription"
        case EditChannelSubscription = "edit_channel_subscription"
        case ConnectNotificationStream = "connect_notification_stream"
        case RegisterFCMDevice = "register_fcm_device"
        case GetStamp = "get_stamp"
        case CreateStamp = "create_stamp"
        case EditStamp = "edit_stamp"
        case EditStampCreatedByOthers = "edit_stamp_created_by_others"
        case DeleteStamp = "delete_stamp"
        case AddMessageStamp = "add_message_stamp"
        case RemoveMessageStamp = "remove_message_stamp"
        case GetMyStampHistory = "get_my_stamp_history"
        case GetStampPalette = "get_stamp_palette"
        case CreateStampPalette = "create_stamp_palette"
        case EditStampPalette = "edit_stamp_palette"
        case DeleteStampPalette = "delete_stamp_palette"
        case GetUser = "get_user"
        case RegisterUser = "register_user"
        case GetMe = "get_me"
        case GetOIDCUserInfo = "get_oidc_userinfo"
        case EditMe = "edit_me"
        case ChangeMyIcon = "change_my_icon"
        case ChangeMyPassword = "change_my_password"
        case EditOtherUsers = "edit_other_users"
        case GetUserQRCode = "get_user_qr_code"
        case GetUserTag = "get_user_tag"
        case EditUserTag = "edit_user_tag"
        case GetUserGroup = "get_user_group"
        case CreateUserGroup = "create_user_group"
        case CreateSpecialUserGroup = "create_special_user_group"
        case EditUserGroup = "edit_user_group"
        case DeleteUserGroup = "delete_user_group"
        case AllUserGroupsAdmin = "edit_others_user_group"
        case WebRTC = "web_rtc"
        case GetMySessions = "get_my_sessions"
        case DeleteMySessions = "delete_my_sessions"
        case GetMyExternalAccount = "get_my_external_account"
        case EditMyExternalAccount = "edit_my_external_account"
        case GetUnread = "get_unread"
        case DeleteUnread = "delete_unread"
        case GetClipFolder = "get_clip_folder"
        case CreateClipFolder = "create_clip_folder"
        case EditClipFolder = "edit_clip_folder"
        case DeleteClipFolder = "delete_clip_folder"
    }
}
