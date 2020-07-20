//
//  DecimalNumber.swift
//
//
//  Created by Ilya Dolgopolov on 25/03/2019.
//  Copyright © 2019 Ilya Dolgopolov. All rights reserved.
//

import Foundation

class DecimalNumber: ApiConvertable {

    var number: NSDecimalNumber = 0

    init() { }

    required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(String.self) {
            number = NSDecimalNumber(string: value)
        } else if let value = try? container.decode(Decimal.self) {
            number = NSDecimalNumber(decimal: value)
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        let stringValue = number.stringValue
        try container.encode(stringValue)
    }
}
