//
//  ApiConstants.swift
//  Friendr
//
//  Created by Ilya Dolgopolov on 30/01/2019.
//  Copyright © 2019 Friendr AS. All rights reserved.
//

import Foundation

enum ApiConstants {

    enum Code {
        static let success = 200 ..< 300
        static let internalError = 99999
        static let userAlreadyExists = 400
        static let nonAuthorized = 401
        static let forbidden = 403
    }

    enum HeaderKey {
        static let contentType: String = "Content-Type"
        static let referer: String = "Referer"
        static let cacheControl: String = "cache-control"
        static let sign: String = "sign"
        static let authorization: String = "Authorization"
        static let accept: String = "Accept"
        static let xSecret: String = "X-Secret"
        static let timestamp: String = "Timestamp"
        static let token: String = "token"
    }

    enum ContentType {
        static let applicationJson: String = "application/json"
        static let wwwForm: String = "application/x-www-form-urlencoded"
    }

    static var baseServerUrl: URL? {

        guard let serverLink = Bundle.main.object(forInfoDictionaryKey: "BaseServerUrl") as? String else {
            return nil
        }

        return URL(string: serverLink)
    }

    static let bearerPref = "bearer"
    static let tokenPref = "Token"

    static let noCache = "no-cache"

    static let invalidTokenReason = "invalid token"

    static let urlSessionTimeoutIntervalForResource: TimeInterval = 60
    static let urlSessionTimeoutIntervalForRequest: TimeInterval = 60

    static var unknownError: String {
        NSLocalizedString("unknown.error.message",
                          value: "Unknown error occurred. Please, try again." ,
                          comment: "")
    }
}
