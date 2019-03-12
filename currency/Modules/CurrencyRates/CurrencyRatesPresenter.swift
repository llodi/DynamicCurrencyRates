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
    
    var launchDuration: Double = -1
    var currentCurrency = ""
    var amount: NSDecimalNumber = 0
    
    var isFirstLaunch = true
    
    init(view: CurrencyRatesViewProtocol, interactor: CurrencyRatesIntercatorInputProtocol) {
        self.view = view
        self.interactor = interactor
    }
    
    // MARK: - CurrencyRatesPresenterProtocol
    
    func viewDidLoad() {
        isFirstLaunch = true
    }
    
    func viewWillAppear() {
        interactor?.retrieveRates(currency: currentCurrency, amount: amount)
    }
    
    func viewWillDisappear() {
        view?.stopTimer()
    }
    
    func onFullReloadTableFinish() {
        view?.startTimer(with: launchDuration)
    }
    
    func onInvokeTimer() {
        interactor?.retrieveRates(currency: currentCurrency, amount: amount)
    }
    
    func onSelect(currency: String) {
        currentCurrency = currency
    }
    
    func onChange(amount: String) {
        let decimalAmount = NSDecimalNumber(string: amount)
        self.amount = decimalAmount == NSDecimalNumber.notANumber ? 0 : NSDecimalNumber(string: amount)
    }
    
    // MARK: - CurrencyRatesIntercatorOutputProtocol
    
    func onRetrieve(rates: [(name: String, rate: NSDecimalNumber)]) {
        var rates = rates
        if isFirstLaunch {
            rates.insert((name: currentCurrency, rate: amount), at: 0)
        }
        
        let vm = convert(model: rates)
        
        if isFirstLaunch {
            view?.show(rates: vm)
            isFirstLaunch = false
        } else {
            view?.update(rates: vm)
        }
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
