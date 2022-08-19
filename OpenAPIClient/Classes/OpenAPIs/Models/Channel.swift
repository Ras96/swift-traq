//
// Channel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** チャンネル */
public struct Channel: Codable, JSONEncodable, Hashable {

    /** チャンネルUUID */
    public var id: UUID
    /** 親チャンネルUUID */
    public var parentId: UUID?
    /** チャンネルがアーカイブされているかどうか */
    public var archived: Bool
    /** 強制通知チャンネルかどうか */
    public var force: Bool
    /** チャンネルトピック */
    public var topic: String
    /** チャンネル名 */
    public var name: String
    /** 子チャンネルのUUID配列 */
    public var children: [UUID]

    public init(id: UUID, parentId: UUID?, archived: Bool, force: Bool, topic: String, name: String, children: [UUID]) {
        self.id = id
        self.parentId = parentId
        self.archived = archived
        self.force = force
        self.topic = topic
        self.name = name
        self.children = children
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case parentId
        case archived
        case force
        case topic
        case name
        case children
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(parentId, forKey: .parentId)
        try container.encode(archived, forKey: .archived)
        try container.encode(force, forKey: .force)
        try container.encode(topic, forKey: .topic)
        try container.encode(name, forKey: .name)
        try container.encode(children, forKey: .children)
    }
}

