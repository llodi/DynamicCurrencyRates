//
//  URLUtils.swift
//
//
//  Created by Ilya Dolgopolov on 06/02/2019.
//  Copyright © 2019 Ilya Dolgopolov. All rights reserved.
//

import Foundation

// swiftlint:disable all
class URLUtils {

    static func buildUrl(baseURL: URL, arguments: [String: Any]) -> URL {

        let queryItems: [URLQueryItem] = arguments.compactMap {
            URLQueryItem(name: $0.key, value: "\($0.value)")
        }

        var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: false)
        components?.queryItems = queryItems
        return components?.url ?? baseURL
    }
    
    static func buildUrl(path: String, components: [String]) -> String {
        let newPath = String(format: path, arguments: components)
        return newPath
    }
    
    static func print(data: Data?) {
        guard let data = data else { return }
        let objs = try?
            JSONSerialization.jsonObject(with: data,
                                         options: .mutableContainers)
        
        let obj = String(describing: objs.flatMap { $0 as? [String: Any] })
        Logger.printd(obj)
    }
}
