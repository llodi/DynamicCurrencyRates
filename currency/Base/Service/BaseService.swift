//
//  BaseService.swift
//
//
//  Created by Ilya Dolgopolov on 06/08/2019.
//  Copyright © 2019 Ilya Dolgopolov. All rights reserved.
//

import Foundation

struct OAuthServiceError: ApiConvertable {
    var error: String
    var error_description: String
}

struct CoreServiceError: ApiConvertable {
    var title: String
    var status: Int
    var detail: String?
}

class BaseService: NetworkServiceProtocol {

    private let provider: ApiProvider

    required
    init(provider: ApiProvider) {
        self.provider = provider
    }

    func request<M>(path: String,
                    method: HttpMethod,
                    parameters: ApiParametersProtocol,
                    tryCount: Int,
                    completion: @escaping (ResponseResult<M, ApiError>) -> Void) where M : ApiConvertable {

        let prm = fillDefaultHeaders(parameters: parameters)
        provider.request(path: path,
                         method: method,
                         parameters: prm) { [weak self] data, error in

                            self?.handleResponse(data: data,
                                                 error: error,
                                                 completion: completion)
        }
    }

    func cancelLastRequest() {
        provider.cancelLastRequest()
    }

    func cancelAllRequests() {
        provider.cancelAllRequests()
    }
}

private extension BaseService {

    func fillDefaultHeaders(parameters: ApiParametersProtocol) -> ApiParametersProtocol {
        var params = parameters

        if params.headers[ApiConstants.HeaderKey.contentType] == nil {
            params.headers = [ApiConstants.HeaderKey.contentType: ApiConstants.ContentType.applicationJson]
        }

        if params.needAuthorization {
//            if let token = credentialsService.accessToken {
//                params.headers[ApiConstants.HeaderKey.authorization] = "\(ApiConstants.bearerPref) \(token)"
//            } else {
//                onCredentialsError(ApiError.unknownError)
//            }
        }
        return params
    }

    func handleNoAuthorized(tryCount: Int,
                            completion: @escaping ((Bool) -> Void)) {

        if tryCount > .zero {
            completion(false)
            return
        }

//        refreshToken {
//            completion(true)
//        }
    }

    func isTokenExpired(error: ApiErrorProtocol?) -> Bool {
        guard let err = error else { return false }

        return err.code == ApiConstants.Code.nonAuthorized
    }
}
