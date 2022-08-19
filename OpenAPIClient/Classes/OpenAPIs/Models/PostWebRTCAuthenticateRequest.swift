//
// PostWebRTCAuthenticateRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** skyway用認証リクエスト */
public struct PostWebRTCAuthenticateRequest: Codable, JSONEncodable, Hashable {

    /** ピアID */
    public var peerId: String

    public init(peerId: String) {
        self.peerId = peerId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case peerId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(peerId, forKey: .peerId)
    }
}

