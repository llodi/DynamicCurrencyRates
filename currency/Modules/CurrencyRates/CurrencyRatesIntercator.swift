//
//  CurrencyRatesIntercator.swift
//  currency
//
//  Created by Ilya on 02/03/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import Foundation

class CurrencyRatesIntercator: CurrencyRatesIntercatorInputProtocol {

    var parameters: CurrencyRatesModuleParameters
    weak var output: CurrencyRatesIntercatorOutputProtocol?
    
    private var service: CurrencyServiceProtocol

    init(service: CurrencyServiceProtocol,
         parameters: CurrencyRatesModuleParameters) {
       
        self.service = service
        self.parameters = parameters
    }
    
    // MARK: - CurrencyRatesIntercatorInputProtocol
    
    func retrieveRates(currency: String, amount: NSDecimalNumber) {
        service.retrieveCurrencyRates(currency: currency) { [weak weakSelf = self] (currencyRates, error) in
            
            if let rates = currencyRates {
                weakSelf?.handleSuccessResponse(rates: rates, amount: amount)
            } else if let err = error {
                weakSelf?.output?.onError(reason: err.localizedMessage)
            } else {
                weakSelf?.output?.onUnknownError()
            }
        }
    }
    
    // MARK: - Private Methods
    
    private func handleSuccessResponse(rates: CurrencyRates, amount: NSDecimalNumber) {
        let rateItems = rates.decimalRates.map{ (name: $0.name, rate: $0.rate.multiplying(by: amount)) }
        output?.onRetrieve(rates: rateItems)
    }
}
