//
//  BaseService.swift
//  currency
//
//  Created by Ilya on 09/03/2019.
//  Copyright © 2019 Revolt. All rights reserved.
//

import Foundation


class LogoutEmptyResponse: ApiConvertable { required init() { } }

class BaseService: Service {
    
    fileprivate var apiProvider: ApiProvider
    
    required init(provider: ApiProvider) {
        self.apiProvider = provider
    }
    
    func request<M: ApiConvertable>(path: ApiSource,
                                    method: HttpMethod,
                                    paramters: ApiParametersProtocol?,
                                    completion: @escaping (M?, ApiErrorProtocol?) -> ()) {
        
        apiProvider.request(path: path.rawValue,
                            method: method,
                            parameters: paramters)
        { (obj, error) in
            DispatchQueue.main.async {
                completion(obj, error)
            }
        }
    }
}
    
//    func request<M : ApiConvertable>(path: ApiSource,
//                                     method: HttpMethod,
//                                     paramters: ApiParametersProtocol?,
//                                     completion: @escaping ([M], ApiErrorProtocol?) -> ())    {
//
//        apiProvider.request(path: path.rawValue,
//                            method: method,
//                            parameters: paramters) { (value, error) in
//
////                                if let array = value as? [Any],
////                                    let arrayOptionalElements = [M].deserialize(from: array) {
////
////
////                                    let array = arrayOptionalElements.compactMap{ $0 }
////                                    completion(array.compactMap{ $0 }, error)
////                                } else {
////                                    completion([], ApiError(failureReason: "Error Occured!", errorCode: 999))
////                                }
//        }
//    }
//}
