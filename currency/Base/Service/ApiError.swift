//
//  ApiError.swift
//
//
//  Created by Ilya Dolgopolov on 29/01/2019.
//  Copyright © 2019 Ilya Dolgopolov. All rights reserved.
//

import Foundation

protocol ApiErrorProtocol: Error {
    var localizedMessage: String { get }
    var code: Int { get }

    init(failureReason: String?,
         errorCode: Int)
}

class ApiError: ApiErrorProtocol {

    var localizedMessage: String
    var code: Int

    required
    init(failureReason: String?, errorCode: Int) {
        self.localizedMessage = failureReason ?? ""
        self.code = errorCode
    }
}


