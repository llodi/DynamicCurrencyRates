//
//  ApiParameters.swift
//  Yammi
//
//  Created by Ilya Dolgopolov on 30/01/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import Foundation

protocol ApiParametersProtocol {
    var headers: [String:String] { get set }
    var arguments: ApiConvertable? { get set }
    var pathComponent: [String]  { get set }
    var body: ApiConvertable?  { get set }
}

struct Parameters: ApiParametersProtocol {
    
    var headers: [String : String] = [:]
    var arguments: ApiConvertable?
    var pathComponent: [String] = []
    var body: ApiConvertable?
}
