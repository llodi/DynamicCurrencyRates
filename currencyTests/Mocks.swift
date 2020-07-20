//
//  Mocks.swift
//  currencyTests
//
//  Created by Ilya on 09/03/2019.
//  Copyright © 2019 Revolt. All rights reserved.
//

import Foundation

import Cuckoo

//protocol ApiEnumConvertable { }
//protocol ApiConvertable { }



//class BaseService: NetworkServiceProtocol {
//
//    required init(provider: ApiProvider) { }
//
//    func request<M>(path: String,
//                    method: HttpMethod,
//                    parameters: ApiParametersProtocol,
//                    tryCount: Int,
//                    completion: @escaping (ResponseResult<M, ApiError>) -> Void) where M : ApiConvertable {
//    }
//
//    func cancelAllRequests() { }
//    func cancelLastRequest() { }
//}


extension CurrencyServiceProtocol {

    func cancelAllRequests() { }
    func cancelLastRequest() { }

    func request<M>(path: String,
                    method: HttpMethod,
                    parameters: ApiParametersProtocol,
                    tryCount: Int,
                    completion: @escaping (ResponseResult<M, ApiError>) -> Void) where M : ApiConvertable {
    }
}


class NetApiProvider: ApiProvider {
    required init(serverUrl: URL?, timeoutForRequest: TimeInterval?, timeoutForResponse: TimeInterval?) {

    }

    func request(path: String, method: HttpMethod, parameters: ApiParametersProtocol?, completion: @escaping (Data?, ApiErrorProtocol?) -> Void) {

    }

    func cancelAllRequests() {

    }

    func cancelLastRequest() {

    }
}
