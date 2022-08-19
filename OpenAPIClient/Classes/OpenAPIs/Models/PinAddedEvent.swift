//
// PinAddedEvent.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** ピン追加イベント */
public struct PinAddedEvent: Codable, JSONEncodable, Hashable {

    /** 変更者UUID */
    public var userId: UUID
    /** メッセージUUID */
    public var messageId: UUID

    public init(userId: UUID, messageId: UUID) {
        self.userId = userId
        self.messageId = messageId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userId
        case messageId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(userId, forKey: .userId)
        try container.encode(messageId, forKey: .messageId)
    }
}

