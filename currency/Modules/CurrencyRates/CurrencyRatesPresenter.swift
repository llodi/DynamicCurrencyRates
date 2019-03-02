//
//  CurrencyRatesPresenter.swift
//  currency
//
//  Created by Ilya on 02/03/2019.
//  Copyright © 2019 Revolt. All rights reserved.
//

import Foundation


class CurrencyRatesPresenter: CurrencyRatesPresenterProtocol, CurrencyRatesIntercatorOutputProtocol {
    
    weak var view: CurrencyRatesViewProtocol?
    var interactor: CurrencyRatesIntercatorInputProtocol?
    
    private var isFirstLaunch = true
    
    init(view: CurrencyRatesViewProtocol, interactor: CurrencyRatesIntercatorInputProtocol) {
        self.view = view
        self.interactor = interactor
    }
    
    func viewDidLoad() {
        interactor?.retrieveRates()
    }
    
    func onFullReloadTableFinish() {
        interactor?.startRetrievingByTimer()
    }
    
    func onChange(currency: String) {
        interactor?.change(currency: currency)
    }
    
    func onChange(amount: String) {
        interactor?.change(amount: amount)
    }
    
    
    // MARK: - CurrencyRatesPresenterProtocol
    
    
    
    // MARK: - CurrencyRatesIntercatorOutputProtocol
    
    func onRetrieve(rates: [(name: String, rate: NSDecimalNumber)]) {
        let vm = convert(model: rates)
        view?.show(rates: vm)
    }
    
    func onUpdate(rates: [(name: String, rate: NSDecimalNumber)]) {
        var vm = convert(model: rates)        
        view?.update(rates: vm)
    }
    
    func onError(reason: String) {
        view?.showError(reason: reason)
    }
    
    func onUnknownError() {
        
    }
    
    // MARK: - Private Methods
    
    private func convert(model: [(name: String, rate: NSDecimalNumber)]) -> [RatesViewModel] {
        var vm = model.compactMap {
            RatesViewModel(currency: $0.name, rate: DecimalFormatterUtils.convert(decimal: $0.rate))
        }
        return vm
    }
}