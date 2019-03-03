//
//  CurrencyRatesViewProtocol.swift
//  currency
//
//  Created by Ilya on 03/03/2019.
//  Copyright © 2019 Revolt. All rights reserved.
//

import Foundation


protocol CurrencyRatesViewProtocol: class {
    
    var presenter: CurrencyRatesPresenterProtocol? { get set }
    
    func show(rates: [RatesViewModel])
    func update(rates: [RatesViewModel])
    
    func showError(reason: String)
    func showUnknownError()
}
