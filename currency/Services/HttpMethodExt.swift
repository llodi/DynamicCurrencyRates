//
//  HttpMethodExt.swift
//  currency
//
//  Created by Ilya on 10/03/2019.
//  Copyright © 2019 Revolt. All rights reserved.
//

import Foundation
import Alamofire



extension HttpMethod {
    func convert() -> HTTPMethod {
        return HTTPMethod(rawValue: self.rawValue) ?? .get
    }
}
