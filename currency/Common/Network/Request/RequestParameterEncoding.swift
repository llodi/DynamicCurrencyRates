//
//  RequestParameterEncoding.swift
//
//
//  Created by Ilya Dolgopolov on 31.10.2019.
//  Copyright © 2019 Ilya Dolgopolov. All rights reserved.
//

import Foundation

// swiftlint:disable all
protocol RequestParameterEncoding {

    /// Creates a URL request by encoding parameters and applying them onto an existing request.
    ///
    /// - parameter urlRequest: The request to have parameters applied.
    /// - parameter parameters: The parameters to apply.
    ///
    /// - throws: An `AFError.parameterEncodingFailed` error if encoding fails.
    ///
    /// - returns: The encoded request.

    func encode(_ urlRequest: URLRequest, with parameters: [String: Any]?) -> URLRequest
}

// MARK: - Extensions

extension NSNumber {
    var isBool: Bool { return CFBooleanGetTypeID() == CFGetTypeID(self) }
}

// MARK: - Implementations of RequestParameterEncoding

struct URLEncoding: RequestParameterEncoding {
    func encode(_ urlRequest: URLRequest, with parameters: [String: Any]?) -> URLRequest {

        var urlRequest = urlRequest
        guard let parameters = parameters else { return urlRequest }

        if urlRequest.value(forHTTPHeaderField: "Content-Type") == nil {
            urlRequest.setValue("application/x-www-form-urlencoded; charset=utf-8", forHTTPHeaderField: "Content-Type")
        }

        urlRequest.httpBody = query(parameters).data(using: .utf8, allowLossyConversion: false)

        return urlRequest
    }

    func query(_ parameters: [String: Any]) -> String {
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
                components.append((escape(key), escape(encode(bool: value.boolValue))))
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

struct JSONEncoding: RequestParameterEncoding {

    func encode(_ urlRequest: URLRequest, with parameters: [String: Any]?) -> URLRequest {

        guard let parameters = parameters else { return urlRequest }

        var request = urlRequest

        do {
            let data = try JSONSerialization.data(withJSONObject: parameters, options: [])

            if request.value(forHTTPHeaderField: "Content-Type") == nil {
                request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            }

            request.httpBody = data
        } catch let error {
            Logger.printd(error)
        }

        return request
    }
}
