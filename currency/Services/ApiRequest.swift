//
//  ApiRequest.swift
//  currency
//
//  Created by Ilya Dolgopolov on 22/03/2019.
//  Copyright © 2019 Revolt. All rights reserved.
//

import Foundation


class ApiRequest {
    
    private var url: URL
    private var httpMethod: HttpMethod = .get
    private var parameters: [String : Any]?
    private var headers: [String: String] = [:]
    var completionHandler: ((Data?, URLResponse?, Error?) -> Void) = { (_, _, _) in }
    var task: URLSessionDataTask!
    
    init(url: URL,
         httpMethod: HttpMethod = .get,
         parameters: [String : Any]? = nil,
         headers: [String: String] = [:],
         completionHandler: @escaping ((Data?, URLResponse?, Error?) -> Void)) {
        
        self.url = url
        self.httpMethod = httpMethod
        self.parameters = parameters
        self.headers = headers
        self.completionHandler = completionHandler
    }
    
    func execute() {
        var request = URLRequest(url: url)
        
        request.httpMethod = httpMethod.rawValue
        request.allHTTPHeaderFields = headers
        
        request.httpBody = query(parameters ?? [:]).data(using: .utf8, allowLossyConversion: false)
        
        task = URLSession.shared.dataTask(with: request, completionHandler: completionHandler)
        
        task.resume()
    }
    
    private func query(_ parameters: [String: Any]) -> String {
        var components: [(String, String)] = []
        
        for key in parameters.keys.sorted(by: <) {
            let value = parameters[key]!
            components += queryComponents(fromKey: key, value: value)
        }
        return components.map { "\($0)=\($1)" }.joined(separator: "&")
    }
    
    private func queryComponents(fromKey key: String, value: Any) -> [(String, String)] {
        var components: [(String, String)] = []
        
        if let dictionary = value as? [String: Any] {
            for (nestedKey, value) in dictionary {
                components += queryComponents(fromKey: "\(key)[\(nestedKey)]", value: value)
            }
        } else if let array = value as? [Any] {
            for value in array {
                components += queryComponents(fromKey: encode(array: key), value: value)
            }
        } else if let value = value as? NSNumber {
            if value.isBool {
                components.append((escape(key), escape(encode(bool:value.boolValue))))
            } else {
                components.append((escape(key), escape("\(value)")))
            }
        } else if let bool = value as? Bool {
            components.append((escape(key), escape(encode(bool: bool))))
        } else {
            components.append((escape(key), escape("\(value)")))
        }
        
        return components
    }
    
    
    private func escape(_ string: String) -> String {
        let generalDelimitersToEncode = ":#[]@" // does not include "?" or "/" due to RFC 3986 - Section 3.4
        let subDelimitersToEncode = "!$&'()*+,;="
        
        var allowedCharacterSet = CharacterSet.urlQueryAllowed
        allowedCharacterSet.remove(charactersIn: "\(generalDelimitersToEncode)\(subDelimitersToEncode)")
        
        var escaped = ""
        
        
        let batchSize = 50
        var index = string.startIndex
        
        while index != string.endIndex {
            let startIndex = index
            let endIndex = string.index(index, offsetBy: batchSize, limitedBy: string.endIndex) ?? string.endIndex
            let range = startIndex..<endIndex
            
            let substring = string[range]
            
            escaped += substring.addingPercentEncoding(withAllowedCharacters: allowedCharacterSet) ?? String(substring)
            
            index = endIndex
        }
        
        return escaped
    }
    
    private func encode(bool: Bool) -> String {
        return bool ? "1" : "0"
    }
    
    private func encode(array key: String) -> String {
        return "\(key)[]"
    }
}
