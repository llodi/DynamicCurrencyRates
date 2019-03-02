//
//  CurrencyRatesAssembler.swift
//  currency
//
//  Created by Ilya on 02/03/2019.
//  Copyright © 2019 Revolt. All rights reserved.
//

import Foundation


class CurrencyRatesAssembler {
    
    func assemble(view: CurrencyRatesViewProtocol, parameters: CurrencyRatesModuleParameters) {
        
        let service = CurrencyService(provider: ApiProvider(serverUrl: URL(string: ApiConstants.MainServerLink)))
        let interactor = CurrencyRatesIntercator(service: service, parameters: parameters)
        
        let presenter = CurrencyRatesPresenter(view: view, interactor: interactor)
        
        interactor.output = presenter
        
        view.presenter = presenter
    }
}



