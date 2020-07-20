//
//  Service.swift
//  
//
//  Created by Ilya Dolgopolov on 29/01/2019.
//  Copyright © 2019 Ilya Dolgopolov. All rights reserved.
//

import Foundation

protocol ApiProvider {
    init(serverUrl: URL?,
         timeoutForRequest: TimeInterval?,
         timeoutForResponse: TimeInterval?)

    func request(path: String,
                 method: HttpMethod,
                 parameters: ApiParametersProtocol?,
                 completion: @escaping (Data?, ApiErrorProtocol?) -> Void)
    func cancelAllRequests()
    func cancelLastRequest()
}

enum ResponseResult<Success, Failure> where Failure : ApiErrorProtocol {

    /// A success, storing a `Success` value.
    case success(Success)

    /// A success, storing an arrya of `Success` values.
    case successArray([Success])

    /// A failure, storing a `Failure` value.
    case failure(Failure)

}

protocol NetworkServiceProtocol {

//    init(provider: ApiProvider)

    func request<M: ApiConvertable>(path: String,
                                    method: HttpMethod,
                                    parameters: ApiParametersProtocol,
                                    tryCount: Int,
                                    completion: @escaping (ResponseResult<M, ApiError>) -> Void)

    func cancelAllRequests()
    func cancelLastRequest()
}
