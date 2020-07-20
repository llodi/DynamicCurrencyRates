//
//  ApiParameters.swift
//
//
//  Created by Ilya Dolgopolov on 30/01/2019.
//  Copyright © 2019 Ilya Dolgopolov. All rights reserved.
//

import Foundation

protocol ApiParametersProtocol {
    var needAuthorization: Bool { get set }
    var headers: [String: String] { get set }
    var arguments: ApiConvertable? { get set }
    var pathComponent: [String] { get set }
    var body: ApiConvertable? { get set }
}

struct Parameters: ApiParametersProtocol {
    var needAuthorization: Bool = true
    var headers: [String: String] = [:]
    var arguments: ApiConvertable?
    var pathComponent: [String] = []
    var body: ApiConvertable?
}

protocol AdditionalApiParametersProtocol: ApiParametersProtocol {
    var bodyArray: [String] { get set }
}

struct AdditionalParameters: AdditionalApiParametersProtocol {
    var needAuthorization: Bool = true
    var headers: [String: String] = [:]
    var arguments: ApiConvertable?
    var pathComponent: [String] = []
    var body: ApiConvertable?
    var bodyArray: [String] = []
}
