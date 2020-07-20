//
//  CurrencyRatesAssembler.swift
//  currency
//
//  Created by Ilya on 02/03/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import UIKit

struct CurrencyRatesInputData {

    var launchDuration: Double = 1
    var currentCurrency = "EUR"
    var amount: NSDecimalNumber = 100
}

struct CurrencyRatesAssembly {

    private init?() { }
    
    static func makeModule(inputData: CurrencyRatesInputData) -> UIViewController {

        let vc = CurrencyRatesViewController.controllerFromStoryboard(.main)

        let apiProvider = NetworkServerProvider(serverUrl: ApiConstants.baseServerUrl,
                                                timeoutForRequest: nil,
                                                timeoutForResponse: nil)

        let service = CurrencyService(provider: apiProvider)

        let presenter = CurrencyRatesPresenter(view: vc)

        presenter.currentCurrency = inputData.currentCurrency
        presenter.amount = inputData.amount
        presenter.launchDuration = inputData.launchDuration

        let interactor = CurrencyRatesIntercator(service: service,
                                                 output: presenter)
        presenter.interactor = interactor
        vc.output = presenter

        return vc
    }
}



