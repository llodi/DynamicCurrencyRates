//
//  HttpMethod.swift
//  currency
//
//  Created by Ilya on 10/03/2019.
//  Copyright © 2019 Revolt. All rights reserved.
//

import Foundation


enum HttpMethod: String {
    case options = "OPTIONS"
    case get     = "GET"
    case head    = "HEAD"
    case post    = "POST"
    case put     = "PUT"
    case patch   = "PATCH"
    case delete  = "DELETE"
    case trace   = "TRACE"
    case connect = "CONNECT"

}
