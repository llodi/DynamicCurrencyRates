//
//  CurrencyRatesPresenterTests.swift
//  currencyTests
//
//  Created by Ilya on 03/03/2019.
//  Copyright © 2019 Revolt. All rights reserved.
//

import XCTest
import Cuckoo

class CurrencyRatesPresenterTests: XCTestCase {
    
    let interactor = MockCurrencyRatesIntercatorInputProtocol()
    let view = MockCurrencyRatesViewProtocol()
    var presenter: CurrencyRatesPresenter!
    
    private var rates: [(name: String, rate: NSDecimalNumber)] = [(name: "USD", rate: 1.0)]
    private var errorReason = "Some Reason"
    private var selectedCurrency = "USD"
    private var changedRate = "1.0"
    
    override func setUp() {
        super.setUp()
        
        presenter = CurrencyRatesPresenter(view: view, interactor: interactor)
        
        initStubs()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func initStubs() {
        stub(interactor) { stub in
            when(stub.change(amount: anyString())).thenDoNothing()
            when(stub.select(currency: anyString())).thenDoNothing()
            when(stub.retrieveRates()).thenDoNothing()
            when(stub.startRetrievingByTimer()).thenDoNothing()
        }
        
        stub(view) { stub in
            when(stub.showError(reason: anyString())).thenDoNothing()
            when(stub.show(rates: any())).thenDoNothing()
            when(stub.update(rates: any())).thenDoNothing()
            when(stub.showUnknownError()).thenDoNothing()
        }
    }
    
    func test_viewDidLoad() {
        presenter.viewDidLoad()
        verify(interactor).retrieveRates()
        verifyNoMoreInteractions(interactor)
    }
    
    func test_onFullReloadTableFinish() {
        presenter.onFullReloadTableFinish()
        verify(interactor).startRetrievingByTimer()
        verifyNoMoreInteractions(interactor)
    }
    
    func test_onSelect() {
        presenter.onSelect(currency: selectedCurrency)
        verify(interactor).select(currency: selectedCurrency)
        verifyNoMoreInteractions(interactor)
    }
    
    func test_onChange() {
        presenter.onChange(amount: changedRate)
        verify(interactor).change(amount: changedRate)
        verifyNoMoreInteractions(interactor)
    }
    
    func test_onShowRates() {
        presenter.onRetrieve(rates: rates)
        verify(view).show(rates: any())
        verifyNoMoreInteractions(view)
    }
    
    func test_onUpdateRates() {
        presenter.onUpdate(rates: rates)
        verify(view).update(rates: any())
        verifyNoMoreInteractions(view)
    }
    
    func test_ErrorWithReason() {
        presenter.onError(reason: errorReason)
        verify(view).showError(reason: errorReason)
        verifyNoMoreInteractions(view)
    }
    
    func test_UnknownError() {
        presenter.onUnknownError()
        verify(view).showUnknownError()
        verifyNoMoreInteractions(view)
    }
}
