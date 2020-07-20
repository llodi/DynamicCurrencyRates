//
//  CurrencyServiceProtocol.swift
//  currency
//
//  Created by Ilya Dolgopolov on 16.10.2019.
//  Copyright © 2019 Revolt. All rights reserved.
//

import Foundation

protocol CurrencyServiceProtocol: NetworkServiceProtocol {

    func retrieveCurrencyRates(currency: String,
                               completion: @escaping ((Result<CurrencyRates, ApiError>) -> ()))
}
