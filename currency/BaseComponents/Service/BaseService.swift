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
        { (data, error) in
            
            guard let data = data else {
                completion(nil, nil)
                return
            }
            
            let decoder = JSONDecoder()
            
            let obj = try? decoder.decode(M.self, from: data)
            
            DispatchQueue.main.async {
                completion(obj, error)
            }
        }
    }

    
    func request<M : ApiConvertable>(path: ApiSource,
                                     method: HttpMethod,
                                     paramters: ApiParametersProtocol?,
                                     completion: @escaping ([M], ApiErrorProtocol?) -> ())    {
        
        apiProvider.request(path: path.rawValue,
                            method: method,
                            parameters: paramters)
        { (data, error) in
            
            guard let data = data else {
                completion([], nil)
                return
            }
            
            let decoder = JSONDecoder()
            
            let objs = try? decoder.decode([M].self, from: data)
            
            DispatchQueue.main.async {
                completion(objs ?? [], error)
            }
        }
    }
}
