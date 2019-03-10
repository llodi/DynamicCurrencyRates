//
//  CurrencyRatesInteractorTests.swift
//  currencyTests
//
//  Created by Ilya on 09/03/2019.
//  Copyright © 2019 Revolt. All rights reserved.
//

import XCTest
import Cuckoo

class CurrencyRatesInteractorTests: XCTestCase {
    
    var interactor: CurrencyRatesIntercator!
    var output = MockCurrencyRatesIntercatorOutputProtocol()
    var parameters = CurrencyRatesModuleParameters()
    var service = MockCurrencyService(provider: ApiProvider())
    
    private let error = ApiError(failureReason: "Some reason", errorCode: 500)
    
    override func setUp() {
        super.setUp()
        
        interactor = CurrencyRatesIntercator(service: service, parameters: parameters)
        interactor.output = output
        initStubs()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func initStubs() {

        stub(output) { stub in
            when(stub.onRetrieve(rates: any())).thenDoNothing()
            when(stub.onUpdate(rates: any())).thenDoNothing()
            when(stub.onError(reason: anyString())).thenDoNothing()
            when(stub.onUnknownError()).thenDoNothing()
        }
        
        stub(service) { stub in
            typealias CurrencyRatesClosure = (CurrencyRates?, ApiErrorProtocol?) -> ()
            let captor = ArgumentCaptor<CurrencyRatesClosure>()
            when(stub.retrieveCurrencyRates(currency: anyString(), completion: captor.capture())).thenDoNothing()
        }
    }
    
    func test_retrieveRates_firstLaunch_error_withReason() {
        interactor.retrieveRates(firstLaunch: true)
        typealias CurrencyRatesClosure = (CurrencyRates?, ApiErrorProtocol?) -> ()
        let captor = ArgumentCaptor<CurrencyRatesClosure>()
        verify(service).retrieveCurrencyRates(currency: anyString(), completion: captor.capture())
        captor.value!(nil, error)
        verifyNoMoreInteractions(service)
        verify(output).onError(reason: anyString())
        verifyNoMoreInteractions(output)
    }
    
    func test_retrieveRates_firstLaunch_unknownError() {
        interactor.retrieveRates(firstLaunch: true)
        typealias CurrencyRatesClosure = (CurrencyRates?, ApiErrorProtocol?) -> ()
        let captor = ArgumentCaptor<CurrencyRatesClosure>()
        verify(service).retrieveCurrencyRates(currency: anyString(), completion: captor.capture())
        captor.value!(nil, nil)
        verifyNoMoreInteractions(service)
        verify(output).onUnknownError()
        verifyNoMoreInteractions(output)
    }
    
    func test_retrieveRates_firstLaunch_success() {
        interactor.retrieveRates(firstLaunch: true)
        typealias CurrencyRatesClosure = (CurrencyRates?, ApiErrorProtocol?) -> ()
        let captor = ArgumentCaptor<CurrencyRatesClosure>()
        
        verify(service).retrieveCurrencyRates(currency: anyString(), completion: captor.capture())
        let rates = CurrencyRates()
        captor.value!(rates, nil)
        verifyNoMoreInteractions(service)
        
        verify(output).onRetrieve(rates: any())
        verifyNoMoreInteractions(output)
    }
    
    
    func test_retrieveRates_error_withReason() {
        interactor.retrieveRates(firstLaunch: false)
        typealias CurrencyRatesClosure = (CurrencyRates?, ApiErrorProtocol?) -> ()
        let captor = ArgumentCaptor<CurrencyRatesClosure>()
        verify(service).retrieveCurrencyRates(currency: anyString(), completion: captor.capture())
        captor.value!(nil, error)
        verifyNoMoreInteractions(service)
        verify(output).onError(reason: anyString())
        verifyNoMoreInteractions(output)
    }
    
    func test_retrieveRates_unknownError() {
        interactor.retrieveRates(firstLaunch: false)
        typealias CurrencyRatesClosure = (CurrencyRates?, ApiErrorProtocol?) -> ()
        let captor = ArgumentCaptor<CurrencyRatesClosure>()
        verify(service).retrieveCurrencyRates(currency: anyString(), completion: captor.capture())
        captor.value!(nil, nil)
        verifyNoMoreInteractions(service)
        verify(output).onUnknownError()
        verifyNoMoreInteractions(output)
    }
    
    func test_retrieveRates_success() {
        interactor.retrieveRates(firstLaunch: false)
        typealias CurrencyRatesClosure = (CurrencyRates?, ApiErrorProtocol?) -> ()
        let captor = ArgumentCaptor<CurrencyRatesClosure>()
        
        verify(service).retrieveCurrencyRates(currency: anyString(), completion: captor.capture())
        let rates = CurrencyRates()
        captor.value!(rates, nil)
        verifyNoMoreInteractions(service)
        
        verify(output).onUpdate(rates: any())
        verifyNoMoreInteractions(output)
    }

}
