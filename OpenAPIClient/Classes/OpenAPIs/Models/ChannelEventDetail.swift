//
// ChannelEventDetail.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** イベント内容 */
public enum ChannelEventDetail: Codable, JSONEncodable, Hashable {
    case typeChildCreatedEvent(ChildCreatedEvent)
    case typeForcedNotificationChangedEvent(ForcedNotificationChangedEvent)
    case typeNameChangedEvent(NameChangedEvent)
    case typeParentChangedEvent(ParentChangedEvent)
    case typePinAddedEvent(PinAddedEvent)
    case typePinRemovedEvent(PinRemovedEvent)
    case typeSubscribersChangedEvent(SubscribersChangedEvent)
    case typeTopicChangedEvent(TopicChangedEvent)
    case typeVisibilityChangedEvent(VisibilityChangedEvent)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeChildCreatedEvent(let value):
            try container.encode(value)
        case .typeForcedNotificationChangedEvent(let value):
            try container.encode(value)
        case .typeNameChangedEvent(let value):
            try container.encode(value)
        case .typeParentChangedEvent(let value):
            try container.encode(value)
        case .typePinAddedEvent(let value):
            try container.encode(value)
        case .typePinRemovedEvent(let value):
            try container.encode(value)
        case .typeSubscribersChangedEvent(let value):
            try container.encode(value)
        case .typeTopicChangedEvent(let value):
            try container.encode(value)
        case .typeVisibilityChangedEvent(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(ChildCreatedEvent.self) {
            self = .typeChildCreatedEvent(value)
        } else if let value = try? container.decode(ForcedNotificationChangedEvent.self) {
            self = .typeForcedNotificationChangedEvent(value)
        } else if let value = try? container.decode(NameChangedEvent.self) {
            self = .typeNameChangedEvent(value)
        } else if let value = try? container.decode(ParentChangedEvent.self) {
            self = .typeParentChangedEvent(value)
        } else if let value = try? container.decode(PinAddedEvent.self) {
            self = .typePinAddedEvent(value)
        } else if let value = try? container.decode(PinRemovedEvent.self) {
            self = .typePinRemovedEvent(value)
        } else if let value = try? container.decode(SubscribersChangedEvent.self) {
            self = .typeSubscribersChangedEvent(value)
        } else if let value = try? container.decode(TopicChangedEvent.self) {
            self = .typeTopicChangedEvent(value)
        } else if let value = try? container.decode(VisibilityChangedEvent.self) {
            self = .typeVisibilityChangedEvent(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of ChannelEventDetail"))
        }
    }
}

