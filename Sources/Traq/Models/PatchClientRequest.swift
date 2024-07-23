//
// PatchClientRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.PatchClientRequest")
public typealias PatchClientRequest = TraqAPI.PatchClientRequest

public extension TraqAPI {
    /** OAuth2クライアント情報変更リクエスト */
    struct PatchClientRequest: Codable, JSONEncodable, Hashable {
        static let nameRule = StringRule(minLength: 1, maxLength: 32, pattern: nil)
        static let descriptionRule = StringRule(minLength: nil, maxLength: 1000, pattern: nil)
        /** クライアント名 */
        public var name: String?
        /** 説明 */
        public var description: String?
        /** コールバックURL */
        public var callbackUrl: String?
        /** クライアント開発者UUID */
        public var developerId: UUID?
        /** confidential client なら true, public client なら false */
        public var confidential: Bool?

        public init(name: String? = nil, description: String? = nil, callbackUrl: String? = nil, developerId: UUID? = nil, confidential: Bool? = nil) {
            self.name = name
            self.description = description
            self.callbackUrl = callbackUrl
            self.developerId = developerId
            self.confidential = confidential
        }

        public enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case description
            case callbackUrl
            case developerId
            case confidential
        }

        // Encodable protocol methods

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodeIfPresent(name, forKey: .name)
            try container.encodeIfPresent(description, forKey: .description)
            try container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            try container.encodeIfPresent(developerId, forKey: .developerId)
            try container.encodeIfPresent(confidential, forKey: .confidential)
        }
    }
}
