//
//  CurrencyRatesInteractorTests.swift
//  currencyTests
//
//  Created by Ilya on 09/03/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import XCTest
import Cuckoo

class CurrencyRatesInteractorTests: XCTestCase {
    
    var interactor: CurrencyRatesIntercator!
    var output = MockCurrencyRatesIntercatorOutputProtocol()
    var parameters = CurrencyRatesModuleParameters()
    var service = MockCurrencyService(provider: ApiProvider())
    
    private let error = ApiError(failureReason: "Some reason", errorCode: 500)
    private var currentCurrency = "EUR"
    private var amount: NSDecimalNumber = 110
    
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
            when(stub.onError(reason: anyString())).thenDoNothing()
            when(stub.onUnknownError()).thenDoNothing()
        }
        
        stub(service) { stub in
            typealias CurrencyRatesClosure = (CurrencyRates?, ApiErrorProtocol?) -> ()
            let captor = ArgumentCaptor<CurrencyRatesClosure>()
            when(stub.retrieveCurrencyRates(currency: anyString(), completion: captor.capture())).thenDoNothing()
        }
    }
    
    func test_retrieveRates_error_withReason() {
        interactor.retrieveRates(currency: currentCurrency, amount: amount)
        typealias CurrencyRatesClosure = (CurrencyRates?, ApiErrorProtocol?) -> ()
        let captor = ArgumentCaptor<CurrencyRatesClosure>()
        verify(service).retrieveCurrencyRates(currency: anyString(), completion: captor.capture())
        captor.value!(nil, error)
        verifyNoMoreInteractions(service)
        verify(output).onError(reason: anyString())
        verifyNoMoreInteractions(output)
    }
    
    func test_retrieveRates_unknownError() {
        interactor.retrieveRates(currency: currentCurrency, amount: amount)
        typealias CurrencyRatesClosure = (CurrencyRates?, ApiErrorProtocol?) -> ()
        let captor = ArgumentCaptor<CurrencyRatesClosure>()
        verify(service).retrieveCurrencyRates(currency: anyString(), completion: captor.capture())
        captor.value!(nil, nil)
        verifyNoMoreInteractions(service)
        verify(output).onUnknownError()
        verifyNoMoreInteractions(output)
    }
    
    let json = """
        { "base": "EUR", "date": "2018-09-06", "rates": { "AUD": 1.6177, "BGN": 1.9573, "BRL": 4.7956, "CAD": 1.535, "CHF": 1.1284, "CNY": 7.9514, "CZK": 25.735, "DKK": 7.4626, "GBP": 0.89895, "HKD": 9.1396, "HRK": 7.44, "HUF": 326.75, "IDR": 17337.0, "ILS": 4.1739, "INR": 83.784, "ISK": 127.9, "JPY": 129.65, "KRW": 1305.8, "MXN": 22.383, "MYR": 4.8158, "NOK": 9.7837, "NZD": 1.7647, "PHP": 62.642, "PLN": 4.3217, "RON": 4.6422, "RUB": 79.638, "SEK": 10.599, "SGD": 1.6013, "THB": 38.16, "TRY": 7.6342, "USD": 1.1643, "ZAR": 17.837 }}
        """.data(using: .utf8)!
    
    func test_retrieveRates_success() {
        interactor.retrieveRates(currency: currentCurrency, amount: amount)
        typealias CurrencyRatesClosure = (CurrencyRates?, ApiErrorProtocol?) -> ()
        let captor = ArgumentCaptor<CurrencyRatesClosure>()
        
        verify(service).retrieveCurrencyRates(currency: anyString(), completion: captor.capture())
        let decoder =  JSONDecoder()
        let rates = try? decoder.decode(CurrencyRates.self, from: json)
        captor.value!(rates!, nil)
        verifyNoMoreInteractions(service)
        
        verify(output).onRetrieve(rates: any())
        verifyNoMoreInteractions(output)
    }
}
