//
//  CurrencyRatesPresenter.swift
//  currency
//
//  Created by Ilya on 02/03/2019.
//  Copyright © 2019 Ilya. All rights reserved.
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
    
    // MARK: - CurrencyRatesPresenterProtocol
    
    func viewDidLoad() {
        interactor?.retrieveRates()
    }
    
    func onFullReloadTableFinish() {
        interactor?.startRetrievingByTimer()
    }
    
    func onSelect(currency: String) {
        interactor?.select(currency: currency)
    }
    
    func onChange(amount: String) {
        interactor?.change(amount: amount)
    }
    
    
    // MARK: - CurrencyRatesIntercatorOutputProtocol
    
    func onRetrieve(rates: [(name: String, rate: NSDecimalNumber)]) {
        let vm = convert(model: rates)
        view?.show(rates: vm)
    }
    
    func onUpdate(rates: [(name: String, rate: NSDecimalNumber)]) {
        let vm = convert(model: rates)
        view?.update(rates: vm)
    }
    
    func onError(reason: String) {
        view?.showError(reason: reason)
    }
    
    func onUnknownError() {
        view?.showUnknownError()
    }
    
    // MARK: - Private Methods
    
    private func convert(model: [(name: String, rate: NSDecimalNumber)]) -> [RatesViewModel] {
        let vm = model.compactMap {
            RatesViewModel(currency: $0.name, rate: DecimalFormatterUtils.convert(decimal: $0.rate))
        }
        return vm
    }
}
