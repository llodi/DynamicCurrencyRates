//
//  CurrencyRatesIntercator.swift
//  currency
//
//  Created by Ilya on 02/03/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import Foundation

class CurrencyRatesIntercator: CurrencyRatesIntercatorInputProtocol {

    weak var output: CurrencyRatesIntercatorOutputProtocol?    
    private var service: CurrencyServiceProtocol

    init(service: CurrencyServiceProtocol,
         output: CurrencyRatesIntercatorOutputProtocol) {
       
        self.service = service
        self.output = output
    }
    
    // MARK: - CurrencyRatesIntercatorInputProtocol
    
    func retrieveRates(currency: String, amount: NSDecimalNumber) {
        
        service.retrieveCurrencyRates(currency: currency) { [weak self] result in

            switch result {
            case .failure(let error):
                self?.output?.onError(reason: error.localizedMessage)
            case .success(let rates):
                self?.handleSuccessResponse(rates: rates, amount: amount)
            }
        }
    }
    
    // MARK: - Private Methods
    
    private func handleSuccessResponse(rates: CurrencyRates, amount: NSDecimalNumber) {
        let rateItems = rates.decimalRates.map{ (name: $0.name, rate: $0.rate.multiplying(by: amount)) }
        output?.onRetrieve(rates: rateItems)
    }
}
