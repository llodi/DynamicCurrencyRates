//
//  CurrencyRatesPresenterTests.swift
//  currencyTests
//
//  Created by Ilya on 03/03/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import XCTest
import Cuckoo

class CurrencyRatesPresenterTests: XCTestCase {
    
    let interactor = MockCurrencyRatesIntercatorInputProtocol()
    let view = MockCurrencyRatesViewInput()
    var presenter: CurrencyRatesPresenter!
    
    private var rates: [(name: String, rate: NSDecimalNumber)] = [(name: "USD", rate: 1.0)]
    private var errorReason = "Some Reason"
    private var selectedCurrency = "USD"
    private var changedRate = "1.0"
    
    override func setUp() {
        super.setUp()
        
        presenter = CurrencyRatesPresenter(view: view as! CurrencyRatesViewInput, interactor: interactor)
        
        initStubs()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func initStubs() {
        stub(interactor) { stub in
            when(stub.retrieveRates(currency: anyString(), amount: any())).thenDoNothing()
        }
        
        stub(view) { stub in
            when(stub.startTimer(with: any())).thenDoNothing()
            when(stub.stopTimer()).thenDoNothing()
            when(stub.showError(reason: anyString())).thenDoNothing()
            when(stub.show(rates: any())).thenDoNothing()
            when(stub.update(rates: any())).thenDoNothing()
        }
    }
    
    func test_viewDidLoad() {
        verifyNoMoreInteractions(interactor)
        XCTAssertEqual(presenter.isFirstLaunch, true)
    }
    
    func test_viewWillAppear() {
        presenter.onViewWillAppear()
        verify(interactor).retrieveRates(currency: anyString(), amount: any())
        verifyNoMoreInteractions(interactor)
    }
    
    func test_viewWillDisappear() {
        presenter.onViewWillDisappear()
        verify(view).stopTimer()
        verifyNoMoreInteractions(interactor)
    }
    
    func test_onFullReloadTableFinish() {
        presenter.onFullReloadTableFinish()
        
        verify(view).startTimer(with: any())
        verifyNoMoreInteractions(view)
    }
    
    func test_onTimerInvoke() {
        presenter.onInvokeTimer()
        verify(interactor).retrieveRates(currency: anyString(), amount: any())
        verifyNoMoreInteractions(interactor)
    }
    
    func test_onSelect() {
        presenter.onSelect(currency: selectedCurrency)
        XCTAssertEqual(presenter.currentCurrency, selectedCurrency)
        verifyNoMoreInteractions(interactor)
        verifyNoMoreInteractions(view)
    }
    
    func test_onChange() {
        presenter.onChange(amount: changedRate)
        var decimalAmount = NSDecimalNumber(string: changedRate)
        decimalAmount = decimalAmount == NSDecimalNumber.notANumber ? 0 : NSDecimalNumber(string: changedRate)
        XCTAssertEqual(presenter.amount, decimalAmount)
        verifyNoMoreInteractions(interactor)
        verifyNoMoreInteractions(view)
    }
    
    func test_onShowRates() {
        presenter.isFirstLaunch = true
        presenter.onRetrieve(rates: rates)
        verify(view).show(rates: any())
        verifyNoMoreInteractions(view)
        XCTAssertEqual(presenter.isFirstLaunch, false)
    }
    
    func test_onUpdateRates() {
        presenter.isFirstLaunch = false
        presenter.onRetrieve(rates: rates)
        verify(view).update(rates: any())
        verifyNoMoreInteractions(view)
        XCTAssertEqual(presenter.isFirstLaunch, false)
    }
    
    func test_ErrorWithReason() {
        presenter.onError(reason: errorReason)
        verify(view).showError(reason: errorReason)
        verifyNoMoreInteractions(view)
    }
}
