//
// UserSubscribeState.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** ユーザーのチャンネル購読状態 */
public struct UserSubscribeState: Codable, JSONEncodable, Hashable {

    /** チャンネルUUID */
    public var channelId: UUID
    public var level: ChannelSubscribeLevel

    public init(channelId: UUID, level: ChannelSubscribeLevel) {
        self.channelId = channelId
        self.level = level
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case channelId
        case level
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(channelId, forKey: .channelId)
        try container.encode(level, forKey: .level)
    }
}

