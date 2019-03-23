//
//  Service.swift
//  Yammi
//
//  Created by Ilya Dolgopolov on 29/01/2019.
//  Copyright © 2019 Ilya Dolgopolov. All rights reserved.
//

import Foundation


protocol Service {
    init(provider: ApiProvider)
    
    func request<M: ApiConvertable>(path: ApiSource,
                                    method: HttpMethod,
                                    paramters: ApiParametersProtocol?,
                                    completion: @escaping (M?, ApiErrorProtocol?) -> ())
    
//    func request<M: ApiConvertable>(path: ApiSource,
//                                    method: HttpMethod,
//                                    paramters: ApiParametersProtocol?,
//                                    completion: @escaping ([M], ApiErrorProtocol?) -> ())
}


