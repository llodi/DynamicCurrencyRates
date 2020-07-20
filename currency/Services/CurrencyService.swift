//
//  CurrencyService.swift
//  currency
//
//  Created by Ilya Dolgopolov on 27/02/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import Foundation

class CurrencyService: BaseService, CurrencyServiceProtocol {
    
    func retrieveCurrencyRates(currency: String,
                               completion: @escaping ((Result<CurrencyRates, ApiError>) -> Void)) {
        
        var parameters = Parameters()
        var arguments = CurrencyRatesRequstArguments()
        arguments.base = currency
        parameters.arguments = arguments
        request(path: ApiSource.latest.rawValue,
                method: .get,
                parameters: parameters,
                tryCount: .zero) { (result: ResponseResult<CurrencyRates, ApiError>) in
                    switch result {
                    case .success(let rates):
                        completion(.success(rates))
                    case .successArray(_):
                        completion(.failure(ApiError.unknownError))
                    case .failure(let error):
                        completion(.failure(error))
                    }
        }
    }
}
