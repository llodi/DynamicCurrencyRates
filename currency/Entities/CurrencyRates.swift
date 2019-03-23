//
//  Currencies.swift
//  currency
//
//  Created by Ilya Dolgopolov on 27/02/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import Foundation

class CurrencyRates: ApiConvertable {
    var base: String = ""
    var date: String?
    private var rates: [String : Decimal] = [:]
    var decimalRates:  [(name: String, rate: NSDecimalNumber)] = []
    
    enum CodingKeys: String, CodingKey {
        case base
        case date
        case rates
    }
    
    required init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        base = try container.decode(String.self, forKey: .base)
        date = try container.decode(String.self, forKey: .date)
        rates = try container.decode([String : Decimal].self, forKey: .rates)
        
        decimalRates = rates.compactMap { (name: $0.key, rate: NSDecimalNumber(decimal: $0.value)) }        
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(base, forKey: .base)
        try container.encode(date, forKey: .date)
        rates.removeAll()
        _ = decimalRates.map {
            rates[$0.name] = $0.rate.decimalValue
        }
        try container.encode(rates, forKey: .rates)
    }
}

struct CurrencyRatesRequstArguments: ApiConvertable {
    var base: String?
}
