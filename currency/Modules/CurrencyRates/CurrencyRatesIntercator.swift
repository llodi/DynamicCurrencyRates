//
//  CurrencyRatesIntercator.swift
//  currency
//
//  Created by Ilya on 02/03/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import Foundation

class CurrencyRatesModuleParameters {
    var launchDuration: Double = 1
    var currentCurrency = "EUR"
    var amount: NSDecimalNumber = 100
}

class CurrencyRatesIntercator: CurrencyRatesIntercatorInputProtocol {

    var parameters: CurrencyRatesModuleParameters
    weak var output: CurrencyRatesIntercatorOutputProtocol?
    
    private var service: CurrencyService
    
    
    init(service: Service,
         parameters: CurrencyRatesModuleParameters) {
       
        self.service = service as! CurrencyService
        self.parameters = parameters
    }
    
    private var rateItems: [(name: String, rate: NSDecimalNumber)] = []
    
    // MARK: - CurrencyRatesIntercatorInputProtocol
    
    func timer(duration: @escaping (Double) -> ()) {
        duration(parameters.launchDuration)
    }
    
    func select(currency: String) {
        parameters.currentCurrency = currency
    }
    
    func change(amount: String) {
        parameters.amount = amount.isEmpty ? 0 : NSDecimalNumber(string: amount)
    }
    
    func retrieveRates(firstLaunch: Bool) {
        service.retrieveCurrencyRates(currency: parameters.currentCurrency) { [weak weakSelf = self] (currencyRates, error) in
            
            if let rates = currencyRates {
                weakSelf?.handleSuccessRatesResponse(firstLaunch: firstLaunch, currencyRates: rates)
            } else if let err = error {
                weakSelf?.output?.onError(reason: err.localizedMessage)
            } else {
                weakSelf?.output?.onUnknownError()
            }
        }
    }
    
    // MARK: - Private Methods
    
    private func handleSuccessRatesResponse(firstLaunch: Bool = true, currencyRates: CurrencyRates) {
        rateItems = currencyRates.rates.map{ (name: $0.name, rate: $0.rate.multiplying(by: parameters.amount)) }
        
        if firstLaunch {
            rateItems.insert((name: parameters.currentCurrency, rate: parameters.amount), at: 0)
            output?.onRetrieve(rates: rateItems)
        } else {
            output?.onUpdate(rates: rateItems)
        }
    }
}
