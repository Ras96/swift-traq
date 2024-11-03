//
// UserTagAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

extension TraqAPI {
    open class UserTagAPI {
        /**
         自分にタグを追加

         - parameter postUserTagRequest: (body)  (optional)
         - returns: UserTag
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func addMyUserTag_0(postUserTagRequest: PostUserTagRequest? = nil) async throws -> UserTag {
            try await addMyUserTag_0WithRequestBuilder(postUserTagRequest: postUserTagRequest).execute().body
        }

        /**
         自分にタグを追加
         - POST /users/me/tags
         - 自分に新しくタグを追加します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter postUserTagRequest: (body)  (optional)
         - returns: RequestBuilder<UserTag>
         */
        open class func addMyUserTag_0WithRequestBuilder(postUserTagRequest: PostUserTagRequest? = nil) -> RequestBuilder<UserTag> {
            let localVariablePath = "/users/me/tags"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postUserTagRequest)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                "Content-Type": "application/json",
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<UserTag>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         ユーザーにタグを追加

         - parameter userId: (path) ユーザーUUID
         - parameter postUserTagRequest: (body)  (optional)
         - returns: UserTag
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func addUserTag_0(userId: UUID, postUserTagRequest: PostUserTagRequest? = nil) async throws -> UserTag {
            try await addUserTag_0WithRequestBuilder(userId: userId, postUserTagRequest: postUserTagRequest).execute().body
        }

        /**
         ユーザーにタグを追加
         - POST /users/{userId}/tags
         - 指定したユーザーに指定したタグを追加します。 Webhookユーザーにタグを追加することは出来ません。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter userId: (path) ユーザーUUID
         - parameter postUserTagRequest: (body)  (optional)
         - returns: RequestBuilder<UserTag>
         */
        open class func addUserTag_0WithRequestBuilder(userId: UUID, postUserTagRequest: PostUserTagRequest? = nil) -> RequestBuilder<UserTag> {
            var localVariablePath = "/users/{userId}/tags"
            let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
            let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postUserTagRequest)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                "Content-Type": "application/json",
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<UserTag>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         自分のタグを編集

         - parameter tagId: (path) タグUUID
         - parameter patchUserTagRequest: (body)  (optional)
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func editMyUserTag(tagId: UUID, patchUserTagRequest: PatchUserTagRequest? = nil) async throws {
            try await editMyUserTagWithRequestBuilder(tagId: tagId, patchUserTagRequest: patchUserTagRequest).execute().body
        }

        /**
         自分のタグを編集
         - PATCH /users/me/tags/{tagId}
         - 自分の指定したタグの状態を変更します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter tagId: (path) タグUUID
         - parameter patchUserTagRequest: (body)  (optional)
         - returns: RequestBuilder<Void>
         */
        open class func editMyUserTagWithRequestBuilder(tagId: UUID, patchUserTagRequest: PatchUserTagRequest? = nil) -> RequestBuilder<Void> {
            var localVariablePath = "/users/me/tags/{tagId}"
            let tagIdPreEscape = "\(APIHelper.mapValueToPathItem(tagId))"
            let tagIdPostEscape = tagIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{tagId}", with: tagIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: patchUserTagRequest)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                "Content-Type": "application/json",
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         ユーザーのタグを編集

         - parameter userId: (path) ユーザーUUID
         - parameter tagId: (path) タグUUID
         - parameter patchUserTagRequest: (body)  (optional)
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func editUserTag_0(userId: UUID, tagId: UUID, patchUserTagRequest: PatchUserTagRequest? = nil) async throws {
            try await editUserTag_0WithRequestBuilder(userId: userId, tagId: tagId, patchUserTagRequest: patchUserTagRequest).execute().body
        }

        /**
         ユーザーのタグを編集
         - PATCH /users/{userId}/tags/{tagId}
         - 指定したユーザーの指定したタグの状態を変更します。 他人の状態は変更できません。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter userId: (path) ユーザーUUID
         - parameter tagId: (path) タグUUID
         - parameter patchUserTagRequest: (body)  (optional)
         - returns: RequestBuilder<Void>
         */
        open class func editUserTag_0WithRequestBuilder(userId: UUID, tagId: UUID, patchUserTagRequest: PatchUserTagRequest? = nil) -> RequestBuilder<Void> {
            var localVariablePath = "/users/{userId}/tags/{tagId}"
            let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
            let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
            let tagIdPreEscape = "\(APIHelper.mapValueToPathItem(tagId))"
            let tagIdPostEscape = tagIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{tagId}", with: tagIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: patchUserTagRequest)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                "Content-Type": "application/json",
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         自分のタグリストを取得

         - returns: [UserTag]
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getMyUserTags_0() async throws -> [UserTag] {
            try await getMyUserTags_0WithRequestBuilder().execute().body
        }

        /**
         自分のタグリストを取得
         - GET /users/me/tags
         - 自分に付けられているタグの配列を取得します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - returns: RequestBuilder<[UserTag]>
         */
        open class func getMyUserTags_0WithRequestBuilder() -> RequestBuilder<[UserTag]> {
            let localVariablePath = "/users/me/tags"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<[UserTag]>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         タグ情報を取得

         - parameter tagId: (path) タグUUID
         - returns: Tag
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getTag(tagId: UUID) async throws -> Tag {
            try await getTagWithRequestBuilder(tagId: tagId).execute().body
        }

        /**
         タグ情報を取得
         - GET /tags/{tagId}
         - 指定したタグの情報を取得します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter tagId: (path) タグUUID
         - returns: RequestBuilder<Tag>
         */
        open class func getTagWithRequestBuilder(tagId: UUID) -> RequestBuilder<Tag> {
            var localVariablePath = "/tags/{tagId}"
            let tagIdPreEscape = "\(APIHelper.mapValueToPathItem(tagId))"
            let tagIdPostEscape = tagIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{tagId}", with: tagIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Tag>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         ユーザーのタグリストを取得

         - parameter userId: (path) ユーザーUUID
         - returns: [UserTag]
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getUserTags_0(userId: UUID) async throws -> [UserTag] {
            try await getUserTags_0WithRequestBuilder(userId: userId).execute().body
        }

        /**
         ユーザーのタグリストを取得
         - GET /users/{userId}/tags
         - 指定したユーザーのタグリストを取得します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter userId: (path) ユーザーUUID
         - returns: RequestBuilder<[UserTag]>
         */
        open class func getUserTags_0WithRequestBuilder(userId: UUID) -> RequestBuilder<[UserTag]> {
            var localVariablePath = "/users/{userId}/tags"
            let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
            let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<[UserTag]>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         自分からタグを削除します

         - parameter tagId: (path) タグUUID
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func removeMyUserTag(tagId: UUID) async throws {
            try await removeMyUserTagWithRequestBuilder(tagId: tagId).execute().body
        }

        /**
         自分からタグを削除します
         - DELETE /users/me/tags/{tagId}
         - 既に存在しないタグを削除しようとした場合は204を返します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter tagId: (path) タグUUID
         - returns: RequestBuilder<Void>
         */
        open class func removeMyUserTagWithRequestBuilder(tagId: UUID) -> RequestBuilder<Void> {
            var localVariablePath = "/users/me/tags/{tagId}"
            let tagIdPreEscape = "\(APIHelper.mapValueToPathItem(tagId))"
            let tagIdPostEscape = tagIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{tagId}", with: tagIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         ユーザーからタグを削除します

         - parameter userId: (path) ユーザーUUID
         - parameter tagId: (path) タグUUID
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func removeUserTag_0(userId: UUID, tagId: UUID) async throws {
            try await removeUserTag_0WithRequestBuilder(userId: userId, tagId: tagId).execute().body
        }

        /**
         ユーザーからタグを削除します
         - DELETE /users/{userId}/tags/{tagId}
         - 既に存在しないタグを削除しようとした場合は204を返します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter userId: (path) ユーザーUUID
         - parameter tagId: (path) タグUUID
         - returns: RequestBuilder<Void>
         */
        open class func removeUserTag_0WithRequestBuilder(userId: UUID, tagId: UUID) -> RequestBuilder<Void> {
            var localVariablePath = "/users/{userId}/tags/{tagId}"
            let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
            let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
            let tagIdPreEscape = "\(APIHelper.mapValueToPathItem(tagId))"
            let tagIdPostEscape = tagIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{tagId}", with: tagIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }
    }
}
