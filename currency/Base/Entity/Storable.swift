//
//  Storable.swift
//  
//
//  Created by Ilya Dolgopolov on 12/02/2019.
//  Copyright © 2019 Ilya Dolgopolov. All rights reserved.
//

import Foundation

protocol Storable: Codable {
    static var savingKey: String { get }
}

extension Storable {
    static var savingKey: String {
        return String(describing: Self.self)
    }
}
