//
//  CurrencyModuleProtocols.swift
//  currency
//
//  Created by Ilya on 27/02/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import Foundation


protocol CurrencyRatesPresenterProtocol {
    func viewDidLoad()
    func viewWillAppear()
    func viewWillDisappear()
    
    func onFullReloadTableFinish()
    
    func onSelect(currency: String)
    func onChange(amount: String)
    
    func onInvokeTimer()
}


protocol CurrencyRatesIntercatorInputProtocol {
    func select(currency: String)
    func change(amount: String)
    func retrieveRates(firstLaunch: Bool)
    func timer(duration: @escaping (Double) -> ())
}

protocol CurrencyRatesIntercatorOutputProtocol: class {
    func onError(reason: String)
    func onUnknownError()
    func onRetrieve(rates: [(name: String, rate: NSDecimalNumber)])
    func onUpdate(rates: [(name: String, rate: NSDecimalNumber)])    
}
