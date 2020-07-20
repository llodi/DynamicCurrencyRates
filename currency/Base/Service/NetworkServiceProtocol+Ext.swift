//
//  NetworkServiceProtocol+Ext.swift
//  currency
//
//  Created by Ilya on 20.07.2020.
//  Copyright © 2020 Revolt. All rights reserved.
//

import Foundation

extension NetworkServiceProtocol {

    func handleResponse<M: ApiConvertable>(data: Data?,
                                           error: ApiErrorProtocol?,
                                           completion: @escaping (ResponseResult<M, ApiError>) -> Void) {

        guard let data = data else {

            completion(.failure(handle(error)))
            return
        }

        let decoder = JSONDecoder()
        var decodeError: Error?

        do {
            let obj = try decoder.decode(M.self, from: data)
            completion(.success(obj))
        } catch let dError {
            decodeError = dError

            do {
                let objs = try decoder.decode([M].self, from: data)
                completion(.successArray(objs))
            } catch let dError2 {
                decodeError = dError2

                if let bError = handleBusinessError(decoder: decoder,
                                                    data: data,
                                                    error: error) {
                    completion(.failure(handle(bError)))
                } else {
                    Logger.printd(decodeError)
                    completion(.failure(handle(ApiError(failureReason: decodeError?.localizedDescription,
                                                        errorCode: ApiConstants.Code.internalError))))
                }
            }
        }
    }

    func handle(_ error: ApiErrorProtocol?) -> ApiError {

        guard let err = error else {
            return ApiError.unknownError
        }

        return .init(failureReason: err.localizedMessage,
                     errorCode: err.code)
    }


    func handleBusinessError(decoder: JSONDecoder,
                             data: Data,
                             error: ApiErrorProtocol?) -> ApiErrorProtocol? {

        if let coreError: CoreServiceError = handleBusinessError(decoder: decoder,
                                                                 data: data) {

            return ApiError(failureReason: coreError.detail,
                            errorCode: coreError.status)
        }

        if let oauthError: OAuthServiceError = handleBusinessError(decoder: decoder,
                                                                   data: data) {

            let code = error?.code ?? ApiConstants.Code.internalError

            return ApiError(failureReason: oauthError.error_description,
                            errorCode: code)
        }

        return nil
    }

    func handleBusinessError<T: ApiConvertable>(decoder: JSONDecoder,
                                                data: Data) -> (T?) {
        do {
            let obj = try decoder.decode(T.self, from: data)
            return obj
        } catch let decodeError {
            Logger.printd("\(decodeError)")
            return nil
        }
    }
}
