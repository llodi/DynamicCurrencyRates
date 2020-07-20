//
//  CurrencyModuleProtocols.swift
//  currency
//
//  Created by Ilya on 27/02/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import Foundation


protocol CurrencyRatesIntercatorInputProtocol {
    func retrieveRates(currency: String, amount: NSDecimalNumber)
}

protocol CurrencyRatesIntercatorOutputProtocol: class {
    func onError(reason: String)
    func onRetrieve(rates: [(name: String, rate: NSDecimalNumber)])
}
