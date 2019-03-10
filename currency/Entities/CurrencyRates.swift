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
    var rates: [(name: String, rate: NSDecimalNumber)] = []
    
    required init() { }
}


struct CurrencyRatesRequstArguments: ApiConvertable {
    var base: String?
}
