//
// OAuth2Scope.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

@available(*, deprecated, renamed: "TraqAPI.OAuth2Scope")
public typealias OAuth2Scope = TraqAPI.OAuth2Scope

public extension TraqAPI {
    /** OAuth2スコープ */
    enum OAuth2Scope: String, Codable, CaseIterable {
        case openid
        case profile
        case read
        case write
        case manageBot = "manage_bot"
    }
}
