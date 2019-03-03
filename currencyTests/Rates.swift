//
//  Rates.swift
//  currencyTests
//
//  Created by Ilya on 03/03/2019.
//  Copyright © 2019 Revolt. All rights reserved.
//

import Foundation


struct CurrencyRates {
    var base: String = ""
    var date: String?
    var rates: [(name: String, rate: NSDecimalNumber)] = []
}
