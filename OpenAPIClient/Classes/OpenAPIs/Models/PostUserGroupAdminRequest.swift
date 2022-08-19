//
// PostUserGroupAdminRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** グループ管理者追加リクエスト */
public struct PostUserGroupAdminRequest: Codable, JSONEncodable, Hashable {

    /** 追加するユーザーのUUID */
    public var id: UUID

    public init(id: UUID) {
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
    }
}

