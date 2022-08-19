//
// PostChannelRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** チャンネル作成リクエスト */
public struct PostChannelRequest: Codable, JSONEncodable, Hashable {

    /** チャンネル名 */
    public var name: String
    /** 親チャンネルのUUID ルートに作成する場合はnullを指定 */
    public var parent: UUID?

    public init(name: String, parent: UUID?) {
        self.name = name
        self.parent = parent
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case parent
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(parent, forKey: .parent)
    }
}

