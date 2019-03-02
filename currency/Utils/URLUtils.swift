//
//  URLUtils.swift
//  Yammi
//
//  Created by Ilya Dolgopolov on 06/02/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import Foundation


class URLUtils {
    
    static func buildUrl(baseURL: URL, arguments: [String : Any]) -> URL  {
        
        let queryItems: [URLQueryItem] = arguments.compactMap {
            URLQueryItem(name: $0.key, value: $0.value as? String)
        }
        
        var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: false)
        components?.queryItems = queryItems
        return components?.url ?? baseURL
    }
}
