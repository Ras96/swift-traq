//
// PostClipFolderMessageRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** クリップ追加リクエスト */
public struct PostClipFolderMessageRequest: Codable, JSONEncodable, Hashable {

    /** メッセージUUID */
    public var messageId: UUID

    public init(messageId: UUID) {
        self.messageId = messageId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case messageId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(messageId, forKey: .messageId)
    }
}

