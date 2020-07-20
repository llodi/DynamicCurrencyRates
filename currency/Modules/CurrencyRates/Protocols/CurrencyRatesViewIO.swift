//
//  CurrencyRatesViewProtocol.swift
//  currency
//
//  Created by Ilya on 03/03/2019.
//  Copyright © 2019 Revolt. All rights reserved.
//

import Foundation


protocol CurrencyRatesViewInput: class {
    
    var output: CurrencyRatesViewOutput? { get set }
    
    func startTimer(with duration: Double) 
    func stopTimer()
    
    func show(rates: [RatesViewModel])
    func update(rates: [RatesViewModel])
    
    func showError(reason: String)
}

protocol CurrencyRatesViewOutput {
    func onViewDidLoad()
    func onViewWillAppear()
    func onViewWillDisappear()

    func onFullReloadTableFinish()

    func onSelect(currency: String)
    func onChange(amount: String)

    func onInvokeTimer()
}
