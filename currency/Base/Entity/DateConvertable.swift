//
//  DateWithTime.swift
//  
//
//  Created by Ilya on 10/08/2019.
//  Copyright © 2019 Ilya Dolgopolov. All rights reserved.
//

import Foundation

protocol TimestampConvertable: ApiConvertable {

    var date: Date { get set }
}

protocol DateConvertable: ApiConvertable {

    static var stringFormat: String { get }
    var date: Date? { get set }

    init()
}

extension DateConvertable {

    init(from decoder: Decoder) throws {
        self.init()
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(String.self) {
            let formatter = DateFormatter()
            formatter.dateFormat = Self.stringFormat
            date = formatter.date(from: value)
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        let formatter = DateFormatter()
        formatter.dateFormat = Self.stringFormat
        if let date = date {
            try container.encode(formatter.string(from: date))
        }
    }
}
