//
// PostBotRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** BOT作成リクエスト */
public struct PostBotRequest: Codable, JSONEncodable, Hashable {

    /** BOTユーザーID 自動的に接頭辞\"BOT_\"が付与されます */
    public var name: String
    /** BOTユーザー表示名 */
    public var displayName: String
    /** BOTの説明 */
    public var description: String
    public var mode: BotMode
    /** BOTサーバーエンドポイント BOT動作モードがHTTPの場合必須です */
    public var endpoint: String?

    public init(name: String, displayName: String, description: String, mode: BotMode, endpoint: String? = nil) {
        self.name = name
        self.displayName = displayName
        self.description = description
        self.mode = mode
        self.endpoint = endpoint
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case displayName
        case description
        case mode
        case endpoint
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(displayName, forKey: .displayName)
        try container.encode(description, forKey: .description)
        try container.encode(mode, forKey: .mode)
        try container.encodeIfPresent(endpoint, forKey: .endpoint)
    }
}

