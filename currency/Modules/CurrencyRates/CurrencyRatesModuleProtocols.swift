//
//  CurrencyModuleProtocols.swift
//  currency
//
//  Created by Ilya on 27/02/2019.
//  Copyright © 2019 Revolt. All rights reserved.
//

import Foundation

class RatesViewModel {
    var currency: String
    var rate:String
    
    init(currency: String, rate: String) {
        self.currency = currency
        self.rate = rate
    }
}

protocol AssembleProtocol {
    func assemble<M>(view: CurrencyRatesViewProtocol, parameters: M)
}

protocol CurrencyRatesViewProtocol: class {
    
    var presenter: CurrencyRatesPresenterProtocol? { get set }
    
    func show(rates: [RatesViewModel])
    func update(rates: [RatesViewModel])
    
    func showError(reason: String)
}


protocol CurrencyRatesPresenterProtocol {
    func viewDidLoad()
    
    func onFullReloadTableFinish()
    
    func onChange(currency: String)
    func onChange(amount: String)
}


protocol CurrencyRatesIntercatorInputProtocol {
    func change(currency: String)
    func change(amount: String)
    func retrieveRates()
    func startRetrievingByTimer()
}

protocol CurrencyRatesIntercatorOutputProtocol: class {
    func onError(reason: String)
    func onUnknownError()
    func onRetrieve(rates: [(name: String, rate: NSDecimalNumber)])
    func onUpdate(rates: [(name: String, rate: NSDecimalNumber)])    
}
