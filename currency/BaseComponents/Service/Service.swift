//
//  Service.swift
//  Yammi
//
//  Created by Ilya Dolgopolov on 29/01/2019.
//  Copyright © 2019 Ilya Dolgopolov. All rights reserved.
//

import Foundation
import HandyJSON


protocol Service {
    init(provider: ApiProvider)
    
    func request<M: ApiConvertable>(path: ApiSource,
                                    method: HttpMethod,
                                    paramters: ApiParametersProtocol?,
                                    completion: @escaping (M?, ApiErrorProtocol?) -> ())
    
    func request<M: ApiConvertable>(path: ApiSource,
                                    method: HttpMethod,
                                    paramters: ApiParametersProtocol?,
                                    completion: @escaping ([M], ApiErrorProtocol?) -> ())
}

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
                            parameters: paramters) { (value, error) in
                                if let dict = value as? [String: Any] {
                                    let obj = M.deserialize(from: dict)
                                    completion(obj, error)
                                } else {
                                    completion(nil, ApiError(failureReason: "Error Occured!", errorCode: 999))
                                }
        }
    }
    
    func request<M : ApiConvertable>(path: ApiSource,
                                     method: HttpMethod,
                                     paramters: ApiParametersProtocol?,
                                     completion: @escaping ([M], ApiErrorProtocol?) -> ())    {
        
        apiProvider.request(path: path.rawValue,
                            method: method,
                            parameters: paramters) { (value, error) in
                                
                                if let array = value as? [Any],
                                    let arrayOptionalElements = [M].deserialize(from: array) {
                                    
                                    
                                    let array = arrayOptionalElements.compactMap{ $0 }
                                    completion(array.compactMap{ $0 }, error)
                                } else {
                                    completion([], ApiError(failureReason: "Error Occured!", errorCode: 999))
                                }
        }
    }
}
