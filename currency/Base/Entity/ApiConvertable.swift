//
//  Convertable.swift
//  
//
//  Created by Ilya on 18.07.2018.
//  Copyright © 2018 Ilya Dolgopolov. All rights reserved.
//

import Foundation

protocol ApiConvertable: Codable { }

// swiftlint:disable all
extension ApiConvertable {
    var dictionary: [String: Any]? {
        let encoder = JSONEncoder()
        encoder.dataEncodingStrategy = .base64
        guard let data = try? encoder.encode(self) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: []))
            .flatMap { $0 as? [String: Any] }
    }
    
    var json: String? {
        let encoder = JSONEncoder()
        encoder.dataEncodingStrategy = .base64
        guard let data = try? encoder.encode(self) else { return nil }
        return String(data: data, encoding: .utf8)
    }
}
