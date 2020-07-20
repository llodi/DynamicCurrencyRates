//
//  UserCredentialsServiceProtocol.swift
//
//
//  Created by Ilya Dolgopolov on 30.10.2019.
//  Copyright © 2019 Ilya Dolgopolov. All rights reserved.
//

import Foundation

protocol UserCredentialsServiceProtocol {

    var userAuthorized: Bool { get }

    var accessToken: String? { get }
    var refreshToken: String? { get }
    var anonymousId: String? { get }

    func save(token: String)
    func save(refreshToken: String)
    func save(anonymousId: String)

    func removeAccessToken()
    func removeRefreshToken()
    func removeAnonymousId()
}

// swiftlint:disable all
class UserCredentialsService: UserCredentialsServiceProtocol {
    var userAuthorized: Bool {
        return false
    }

    var accessToken: String?

    var refreshToken: String?

    var anonymousId: String?

    func save(token: String) {

    }

    func save(refreshToken: String) {

    }

    func save(anonymousId: String) {

    }

    func removeAccessToken() {

    }
    func removeRefreshToken() {

    }

    func removeAnonymousId() {

    }


    static let shared = UserCredentialsService()
//
//
//    // MARK: - Public vars and getters
//
//    var userAuthorized: Bool {
//        return (accessToken ?? "").isEmpty == false
//    }
//
//    var accessToken: String? {
//        print(#function)
//        if self.token != nil { return self.token }
//
//        do {
//            self.token = try secureTokenStore?
//                .getValue(for: Constants.Keys.accessToken)
//        } catch (let e) {
//            print(e)
//        }
//        return self.token
//    }
//
//    var refreshToken: String? {
//        print(#function)
//        if self.refresh != nil { return self.refresh }
//
//        do {
//            self.refresh = try secureTokenStore?
//                .getValue(for: Constants.Keys.refreshToken)
//        } catch (let e) {
//            print(e)
//        }
//        return self.token
//    }
//
//    var anonymousId: String? {
//        print(#function)
//        if self.aId != nil { return self.aId }
//
//        do {
//            self.aId = try secureTokenStore?
//                .getValue(for: Constants.Keys.anonymousId)
//        } catch (let e) {
//            print(e)
//        }
//        return self.aId
//    }
//
//    // MARK: - Private vars
//
//    private let secureTokenStore: SecureStorable? =
//        SecureStore(secureStoreQueryable: Constants.tokenQueryable)
//
//    private var token: String?
//    private var refresh: String?
//    private var aId: String?
//
//    // MARK: - Save funcs
//
//    func save(token: String) {
//        do {
//            try secureTokenStore?
//                .setValue(token, for: Constants.Keys.accessToken)
//            self.token = token
//        } catch (let e) {
//            print(e)
//        }
//    }
//
//    func save(refreshToken: String) {
//        do {
//            try secureTokenStore?
//                .setValue(refreshToken, for: Constants.Keys.refreshToken)
//            self.refresh = refreshToken
//        } catch (let e) {
//            print(e)
//        }
//    }
//
//    func save(anonymousId: String) {
//        do {
//            try secureTokenStore?
//                .setValue(anonymousId, for: Constants.Keys.anonymousId)
//            self.aId = anonymousId
//        } catch (let e) {
//            print(e)
//        }
//    }
//
//    // MARK: - Remove funcs
//
//    func removeAccessToken() {
//        token = nil
//        do {
//            try secureTokenStore?
//                .removeValue(for: Constants.Keys.accessToken)
//        } catch (let e) {
//            Logger.printd(e)
//        }
//    }
//
//    func removeRefreshToken() {
//        refresh = nil
//
//        do {
//            try secureTokenStore?
//                .removeValue(for: Constants.Keys.refreshToken)
//        } catch (let e) {
//            Logger.printd(e)
//        }
//    }
//
//    func removeAnonymousId() {
//        aId = nil
//        
//        do {
//            try secureTokenStore?
//                .removeValue(for: Constants.Keys.anonymousId)
//        } catch (let e) {
//            Logger.printd(e)
//        }
//    }
//}
//
//private extension UserCredentialsService {
//
//    enum Constants {
//        enum Keys {
//            static let accessToken = "Access.Token.Key"
//            static let refreshToken = "Refresh.Token.Key"
//            static let anonymousId = "Anonymous.Id.Key"
//        }
//
//        static let tokenQueryable =
//            GenericPasswordQueryable(service: "com.osnit.mycompany.keychain.token",
//                                     accessGroup: nil)
//        static let uuidStringQueryable =
//            GenericPasswordQueryable(service: "com.osnit.mycompany.keychain.uuid.string",
//                                     accessGroup: nil)
//    }
}
