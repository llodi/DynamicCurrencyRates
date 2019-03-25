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



class BaseService: Service {

    
    required init(provider: ApiProvider) { }
    
    func request<M : ApiConvertable>(path: ApiSource, method: HttpMethod,
                                     paramters: ApiParametersProtocol?,
                                     completion: @escaping (M?, ApiErrorProtocol?) -> ()) {
    }
    
    func request<M: ApiConvertable>(path: ApiSource,
                                    method: HttpMethod,
                                    paramters: ApiParametersProtocol?,
                                    completion: @escaping ([M], ApiErrorProtocol?) -> ()) {
    }
}

struct ApiProvider {
    
}
