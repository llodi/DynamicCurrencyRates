//
//  ApiError+Ext.swift
//  currency
//
//  Created by Ilya on 20.07.2020.
//  Copyright © 2020 Revolt. All rights reserved.
//

import Foundation

extension ApiError {
    static var unknownError: ApiError {
        return ApiError(failureReason: ApiConstants.unknownError,
                        errorCode: ApiConstants.Code.internalError)
    }
}
