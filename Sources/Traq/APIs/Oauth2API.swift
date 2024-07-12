//
// Oauth2API.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

extension TraqAPI {
    open class Oauth2API {
        /**
         OAuth2クライアントを作成

         - parameter postClientRequest: (body)  (optional)
         - returns: OAuth2ClientDetail
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func createClient(postClientRequest: PostClientRequest? = nil) async throws -> OAuth2ClientDetail {
            try await createClientWithRequestBuilder(postClientRequest: postClientRequest).execute().body
        }

        /**
         OAuth2クライアントを作成
         - POST /clients
         - OAuth2クライアントを作成します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter postClientRequest: (body)  (optional)
         - returns: RequestBuilder<OAuth2ClientDetail>
         */
        open class func createClientWithRequestBuilder(postClientRequest: PostClientRequest? = nil) -> RequestBuilder<OAuth2ClientDetail> {
            let localVariablePath = "/clients"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postClientRequest)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                "Content-Type": "application/json",
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<OAuth2ClientDetail>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         OAuth2クライアントを削除

         - parameter clientId: (path) OAuth2クライアントUUID
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func deleteClient(clientId: String) async throws {
            try await deleteClientWithRequestBuilder(clientId: clientId).execute().body
        }

        /**
         OAuth2クライアントを削除
         - DELETE /clients/{clientId}
         - 指定したOAuth2クライアントを削除します。 対象のクライアントの管理権限が必要です。正常に削除された場合、このクライアントに対する認可は全て取り消されます。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter clientId: (path) OAuth2クライアントUUID
         - returns: RequestBuilder<Void>
         */
        open class func deleteClientWithRequestBuilder(clientId: String) -> RequestBuilder<Void> {
            var localVariablePath = "/clients/{clientId}"
            let clientIdPreEscape = "\(APIHelper.mapValueToPathItem(clientId))"
            let clientIdPostEscape = clientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{clientId}", with: clientIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         OAuth2クライアント情報を変更

         - parameter clientId: (path) OAuth2クライアントUUID
         - parameter patchClientRequest: (body)  (optional)
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func editClient(clientId: String, patchClientRequest: PatchClientRequest? = nil) async throws {
            try await editClientWithRequestBuilder(clientId: clientId, patchClientRequest: patchClientRequest).execute().body
        }

        /**
         OAuth2クライアント情報を変更
         - PATCH /clients/{clientId}
         - 指定したOAuth2クライアントの情報を変更します。 対象のクライアントの管理権限が必要です。 クライアント開発者UUIDを変更した場合は、変更先ユーザーにクライアント管理権限が移譲され、自分自身は権限を失います。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter clientId: (path) OAuth2クライアントUUID
         - parameter patchClientRequest: (body)  (optional)
         - returns: RequestBuilder<Void>
         */
        open class func editClientWithRequestBuilder(clientId: String, patchClientRequest: PatchClientRequest? = nil) -> RequestBuilder<Void> {
            var localVariablePath = "/clients/{clientId}"
            let clientIdPreEscape = "\(APIHelper.mapValueToPathItem(clientId))"
            let clientIdPostEscape = clientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{clientId}", with: clientIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: patchClientRequest)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                "Content-Type": "application/json",
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         OAuth2クライアント情報を取得

         - parameter clientId: (path) OAuth2クライアントUUID
         - parameter detail: (query) 詳細情報を含めるかどうか (optional, default to false)
         - returns: GetClient200Response
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getClient(clientId: String, detail: Bool? = nil) async throws -> GetClient200Response {
            try await getClientWithRequestBuilder(clientId: clientId, detail: detail).execute().body
        }

        /**
         OAuth2クライアント情報を取得
         - GET /clients/{clientId}
         - 指定したOAuth2クライアントの情報を取得します。 詳細情報の取得には対象のクライアントの管理権限が必要です。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter clientId: (path) OAuth2クライアントUUID
         - parameter detail: (query) 詳細情報を含めるかどうか (optional, default to false)
         - returns: RequestBuilder<GetClient200Response>
         */
        open class func getClientWithRequestBuilder(clientId: String, detail: Bool? = nil) -> RequestBuilder<GetClient200Response> {
            var localVariablePath = "/clients/{clientId}"
            let clientIdPreEscape = "\(APIHelper.mapValueToPathItem(clientId))"
            let clientIdPostEscape = clientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{clientId}", with: clientIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            var localVariableUrlComponents = URLComponents(string: localVariableURLString)
            localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
                "detail": (wrappedValue: detail?.encodeToJSON(), isExplode: true),
            ])

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<GetClient200Response>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         OAuth2クライアントのリストを取得

         - parameter all: (query) 全てのクライアントを取得するかどうか (optional, default to false)
         - returns: [OAuth2Client]
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getClients(all: Bool? = nil) async throws -> [OAuth2Client] {
            try await getClientsWithRequestBuilder(all: all).execute().body
        }

        /**
         OAuth2クライアントのリストを取得
         - GET /clients
         - 自身が開発者のOAuth2クライアントのリストを取得します。 `all`が`true`の場合、全開発者の全クライアントのリストを返します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter all: (query) 全てのクライアントを取得するかどうか (optional, default to false)
         - returns: RequestBuilder<[OAuth2Client]>
         */
        open class func getClientsWithRequestBuilder(all: Bool? = nil) -> RequestBuilder<[OAuth2Client]> {
            let localVariablePath = "/clients"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            var localVariableUrlComponents = URLComponents(string: localVariableURLString)
            localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
                "all": (wrappedValue: all?.encodeToJSON(), isExplode: true),
            ])

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<[OAuth2Client]>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         有効トークンのリストを取得

         - returns: [ActiveOAuth2Token]
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getMyTokens() async throws -> [ActiveOAuth2Token] {
            try await getMyTokensWithRequestBuilder().execute().body
        }

        /**
         有効トークンのリストを取得
         - GET /users/me/tokens
         - 有効な自分に発行されたOAuth2トークンのリストを取得します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - returns: RequestBuilder<[ActiveOAuth2Token]>
         */
        open class func getMyTokensWithRequestBuilder() -> RequestBuilder<[ActiveOAuth2Token]> {
            let localVariablePath = "/users/me/tokens"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<[ActiveOAuth2Token]>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         OAuth2 認可エンドポイント

         - parameter clientId: (query)
         - parameter responseType: (query)  (optional)
         - parameter redirectUri: (query)  (optional)
         - parameter scope: (query)  (optional)
         - parameter state: (query)  (optional)
         - parameter codeChallenge: (query)  (optional)
         - parameter codeChallengeMethod: (query)  (optional)
         - parameter nonce: (query)  (optional)
         - parameter prompt: (query)  (optional)
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func getOAuth2Authorize(clientId: String, responseType: OAuth2ResponseType? = nil, redirectUri: String? = nil, scope: String? = nil, state: String? = nil, codeChallenge: String? = nil, codeChallengeMethod: String? = nil, nonce: String? = nil, prompt: OAuth2Prompt? = nil) async throws {
            try await getOAuth2AuthorizeWithRequestBuilder(clientId: clientId, responseType: responseType, redirectUri: redirectUri, scope: scope, state: state, codeChallenge: codeChallenge, codeChallengeMethod: codeChallengeMethod, nonce: nonce, prompt: prompt).execute().body
        }

        /**
         OAuth2 認可エンドポイント
         - GET /oauth2/authorize
         - OAuth2 認可エンドポイント
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter clientId: (query)
         - parameter responseType: (query)  (optional)
         - parameter redirectUri: (query)  (optional)
         - parameter scope: (query)  (optional)
         - parameter state: (query)  (optional)
         - parameter codeChallenge: (query)  (optional)
         - parameter codeChallengeMethod: (query)  (optional)
         - parameter nonce: (query)  (optional)
         - parameter prompt: (query)  (optional)
         - returns: RequestBuilder<Void>
         */
        open class func getOAuth2AuthorizeWithRequestBuilder(clientId: String, responseType: OAuth2ResponseType? = nil, redirectUri: String? = nil, scope: String? = nil, state: String? = nil, codeChallenge: String? = nil, codeChallengeMethod: String? = nil, nonce: String? = nil, prompt: OAuth2Prompt? = nil) -> RequestBuilder<Void> {
            let localVariablePath = "/oauth2/authorize"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            var localVariableUrlComponents = URLComponents(string: localVariableURLString)
            localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
                "response_type": (wrappedValue: responseType?.encodeToJSON(), isExplode: true),
                "client_id": (wrappedValue: clientId.encodeToJSON(), isExplode: true),
                "redirect_uri": (wrappedValue: redirectUri?.encodeToJSON(), isExplode: true),
                "scope": (wrappedValue: scope?.encodeToJSON(), isExplode: true),
                "state": (wrappedValue: state?.encodeToJSON(), isExplode: true),
                "code_challenge": (wrappedValue: codeChallenge?.encodeToJSON(), isExplode: true),
                "code_challenge_method": (wrappedValue: codeChallengeMethod?.encodeToJSON(), isExplode: true),
                "nonce": (wrappedValue: nonce?.encodeToJSON(), isExplode: true),
                "prompt": (wrappedValue: prompt?.encodeToJSON(), isExplode: true),
            ])

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         OAuth2 認可エンドポイント

         - parameter clientId: (form)
         - parameter responseType: (form)  (optional)
         - parameter redirectUri: (form)  (optional)
         - parameter scope: (form)  (optional)
         - parameter state: (form)  (optional)
         - parameter codeChallenge: (form)  (optional)
         - parameter codeChallengeMethod: (form)  (optional)
         - parameter nonce: (form)  (optional)
         - parameter prompt: (form)  (optional)
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func postOAuth2Authorize(clientId: String, responseType: OAuth2ResponseType? = nil, redirectUri: String? = nil, scope: String? = nil, state: String? = nil, codeChallenge: String? = nil, codeChallengeMethod: String? = nil, nonce: String? = nil, prompt: OAuth2Prompt? = nil) async throws {
            try await postOAuth2AuthorizeWithRequestBuilder(clientId: clientId, responseType: responseType, redirectUri: redirectUri, scope: scope, state: state, codeChallenge: codeChallenge, codeChallengeMethod: codeChallengeMethod, nonce: nonce, prompt: prompt).execute().body
        }

        /**
         OAuth2 認可エンドポイント
         - POST /oauth2/authorize
         - OAuth2 認可エンドポイント
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter clientId: (form)
         - parameter responseType: (form)  (optional)
         - parameter redirectUri: (form)  (optional)
         - parameter scope: (form)  (optional)
         - parameter state: (form)  (optional)
         - parameter codeChallenge: (form)  (optional)
         - parameter codeChallengeMethod: (form)  (optional)
         - parameter nonce: (form)  (optional)
         - parameter prompt: (form)  (optional)
         - returns: RequestBuilder<Void>
         */
        open class func postOAuth2AuthorizeWithRequestBuilder(clientId: String, responseType: OAuth2ResponseType? = nil, redirectUri: String? = nil, scope: String? = nil, state: String? = nil, codeChallenge: String? = nil, codeChallengeMethod: String? = nil, nonce: String? = nil, prompt: OAuth2Prompt? = nil) -> RequestBuilder<Void> {
            let localVariablePath = "/oauth2/authorize"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableFormParams: [String: Any?] = [
                "response_type": responseType?.encodeToJSON(),
                "client_id": clientId.encodeToJSON(),
                "redirect_uri": redirectUri?.encodeToJSON(),
                "scope": scope?.encodeToJSON(),
                "state": state?.encodeToJSON(),
                "code_challenge": codeChallenge?.encodeToJSON(),
                "code_challenge_method": codeChallengeMethod?.encodeToJSON(),
                "nonce": nonce?.encodeToJSON(),
                "prompt": prompt?.encodeToJSON(),
            ]

            let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
            let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                "Content-Type": "application/x-www-form-urlencoded",
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         OAuth2 認可承諾API

         - parameter submit: (form) 承諾する場合は\\\&quot;approve\\\&quot;
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func postOAuth2AuthorizeDecide(submit: String) async throws {
            try await postOAuth2AuthorizeDecideWithRequestBuilder(submit: submit).execute().body
        }

        /**
         OAuth2 認可承諾API
         - POST /oauth2/authorize/decide
         - OAuth2 認可承諾
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter submit: (form) 承諾する場合は\\\&quot;approve\\\&quot;
         - returns: RequestBuilder<Void>
         */
        open class func postOAuth2AuthorizeDecideWithRequestBuilder(submit: String) -> RequestBuilder<Void> {
            let localVariablePath = "/oauth2/authorize/decide"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableFormParams: [String: Any?] = [
                "submit": submit.encodeToJSON(),
            ]

            let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
            let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                "Content-Type": "application/x-www-form-urlencoded",
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         OAuth2 トークンエンドポイント

         - parameter grantType: (form)
         - parameter code: (form)  (optional)
         - parameter redirectUri: (form)  (optional)
         - parameter clientId: (form)  (optional)
         - parameter codeVerifier: (form)  (optional)
         - parameter username: (form)  (optional)
         - parameter password: (form)  (optional)
         - parameter scope: (form)  (optional)
         - parameter refreshToken: (form)  (optional)
         - parameter clientSecret: (form)  (optional)
         - returns: OAuth2Token
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func postOAuth2Token(grantType: String, code: String? = nil, redirectUri: String? = nil, clientId: String? = nil, codeVerifier: String? = nil, username: String? = nil, password: String? = nil, scope: String? = nil, refreshToken: String? = nil, clientSecret: String? = nil) async throws -> OAuth2Token {
            try await postOAuth2TokenWithRequestBuilder(grantType: grantType, code: code, redirectUri: redirectUri, clientId: clientId, codeVerifier: codeVerifier, username: username, password: password, scope: scope, refreshToken: refreshToken, clientSecret: clientSecret).execute().body
        }

        /**
         OAuth2 トークンエンドポイント
         - POST /oauth2/token
         - OAuth2 トークンエンドポイント
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter grantType: (form)
         - parameter code: (form)  (optional)
         - parameter redirectUri: (form)  (optional)
         - parameter clientId: (form)  (optional)
         - parameter codeVerifier: (form)  (optional)
         - parameter username: (form)  (optional)
         - parameter password: (form)  (optional)
         - parameter scope: (form)  (optional)
         - parameter refreshToken: (form)  (optional)
         - parameter clientSecret: (form)  (optional)
         - returns: RequestBuilder<OAuth2Token>
         */
        open class func postOAuth2TokenWithRequestBuilder(grantType: String, code: String? = nil, redirectUri: String? = nil, clientId: String? = nil, codeVerifier: String? = nil, username: String? = nil, password: String? = nil, scope: String? = nil, refreshToken: String? = nil, clientSecret: String? = nil) -> RequestBuilder<OAuth2Token> {
            let localVariablePath = "/oauth2/token"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableFormParams: [String: Any?] = [
                "grant_type": grantType.encodeToJSON(),
                "code": code?.encodeToJSON(),
                "redirect_uri": redirectUri?.encodeToJSON(),
                "client_id": clientId?.encodeToJSON(),
                "code_verifier": codeVerifier?.encodeToJSON(),
                "username": username?.encodeToJSON(),
                "password": password?.encodeToJSON(),
                "scope": scope?.encodeToJSON(),
                "refresh_token": refreshToken?.encodeToJSON(),
                "client_secret": clientSecret?.encodeToJSON(),
            ]

            let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
            let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                "Content-Type": "application/x-www-form-urlencoded",
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<OAuth2Token>.Type = TraqAPI.requestBuilderFactory.getBuilder()

            return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         OAuthクライアントのトークンを削除

         - parameter clientId: (path) OAuth2クライアントUUID
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func revokeClientTokens(clientId: String) async throws {
            try await revokeClientTokensWithRequestBuilder(clientId: clientId).execute().body
        }

        /**
         OAuthクライアントのトークンを削除
         - DELETE /clients/{clientId}/tokens
         - 自分が許可している指定したOAuthクライアントのアクセストークンを全てRevokeします。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter clientId: (path) OAuth2クライアントUUID
         - returns: RequestBuilder<Void>
         */
        open class func revokeClientTokensWithRequestBuilder(clientId: String) -> RequestBuilder<Void> {
            var localVariablePath = "/clients/{clientId}/tokens"
            let clientIdPreEscape = "\(APIHelper.mapValueToPathItem(clientId))"
            let clientIdPostEscape = clientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{clientId}", with: clientIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         トークンの認可を取り消す

         - parameter tokenId: (path) OAuth2トークンUUID
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func revokeMyToken(tokenId: UUID) async throws {
            try await revokeMyTokenWithRequestBuilder(tokenId: tokenId).execute().body
        }

        /**
         トークンの認可を取り消す
         - DELETE /users/me/tokens/{tokenId}
         - 自分の指定したトークンの認可を取り消します。
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter tokenId: (path) OAuth2トークンUUID
         - returns: RequestBuilder<Void>
         */
        open class func revokeMyTokenWithRequestBuilder(tokenId: UUID) -> RequestBuilder<Void> {
            var localVariablePath = "/users/me/tokens/{tokenId}"
            let tokenIdPreEscape = "\(APIHelper.mapValueToPathItem(tokenId))"
            let tokenIdPostEscape = tokenIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            localVariablePath = localVariablePath.replacingOccurrences(of: "{tokenId}", with: tokenIdPostEscape, options: .literal, range: nil)
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableParameters: [String: Any]? = nil

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [:]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }

        /**
         OAuth2 トークン無効化エンドポイント

         - parameter token: (form) 無効化するOAuth2トークンまたはOAuth2リフレッシュトークン
         - returns: Void
         */
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        open class func revokeOAuth2Token(token: String) async throws {
            try await revokeOAuth2TokenWithRequestBuilder(token: token).execute().body
        }

        /**
         OAuth2 トークン無効化エンドポイント
         - POST /oauth2/revoke
         - OAuth2 トークン無効化エンドポイント
         - OAuth:
           - type: oauth2
           - name: OAuth2
         - Bearer Token:
           - type: http
           - name: bearerAuth
         - parameter token: (form) 無効化するOAuth2トークンまたはOAuth2リフレッシュトークン
         - returns: RequestBuilder<Void>
         */
        open class func revokeOAuth2TokenWithRequestBuilder(token: String) -> RequestBuilder<Void> {
            let localVariablePath = "/oauth2/revoke"
            let localVariableURLString = TraqAPI.basePath + localVariablePath
            let localVariableFormParams: [String: Any?] = [
                "token": token.encodeToJSON(),
            ]

            let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
            let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

            let localVariableUrlComponents = URLComponents(string: localVariableURLString)

            let localVariableNillableHeaders: [String: Any?] = [
                "Content-Type": "application/x-www-form-urlencoded",
            ]

            let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

            let localVariableRequestBuilder: RequestBuilder<Void>.Type = TraqAPI.requestBuilderFactory.getNonDecodableBuilder()

            return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
        }
    }
}
