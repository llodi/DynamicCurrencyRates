//
//  CurrencyService.swift
//  currency
//
//  Created by Ilya Dolgopolov on 27/02/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import Foundation


class CurrencyService: BaseService {
    
    func retrieveCurrencyRates(currency: String, completion: @escaping ((CurrencyRates?, ApiErrorProtocol?) -> ())) {
        
        var parameters = Parameters()
        var arguments = CurrencyRatesRequstArguments()
        arguments.base = currency
        parameters.arguments = arguments
        request(path: .latest,
                method: .get,
                paramters: parameters,
                completion: { (currencyObj: CurrencyRates?, error) in
                    completion(currencyObj, error)
        })

    }
}
