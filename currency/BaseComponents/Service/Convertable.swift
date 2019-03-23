//
//  Convertable.swift
//  
//
//  Created by Ilya on 18.07.2018.
//  Copyright © 2018 Ilya. All rights reserved.
//

import Foundation

protocol ApiConvertable: Codable { }

extension ApiConvertable {
    var dictionary: [String: Any]? {
        guard let data = try? JSONEncoder().encode(self) else { return nil }
        return (try? JSONSerialization
            .jsonObject(with: data, options: .allowFragments))
            .flatMap { $0 as? [String: Any] }
    }
}
