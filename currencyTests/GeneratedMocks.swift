// MARK: - Mocks generated from file: currency/Modules/CurrencyRates/Protocols/CurrencyRatesModuleProtocols.swift at 2019-03-03 09:12:42 +0000

//
//  CurrencyModuleProtocols.swift
//  currency
//
//  Created by Ilya on 27/02/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import Cuckoo

import Foundation

class MockCurrencyRatesPresenterProtocol: CurrencyRatesPresenterProtocol, Cuckoo.ProtocolMock {
    typealias MocksType = CurrencyRatesPresenterProtocol
    typealias Stubbing = __StubbingProxy_CurrencyRatesPresenterProtocol
    typealias Verification = __VerificationProxy_CurrencyRatesPresenterProtocol
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "viewDidLoad", "returnSignature": "", "fullyQualifiedName": "viewDidLoad()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func viewDidLoad()  {
        
            return cuckoo_manager.call("viewDidLoad()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "onFullReloadTableFinish", "returnSignature": "", "fullyQualifiedName": "onFullReloadTableFinish()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onFullReloadTableFinish()  {
        
            return cuckoo_manager.call("onFullReloadTableFinish()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "onSelect", "returnSignature": "", "fullyQualifiedName": "onSelect(currency: String)", "parameterSignature": "currency: String", "parameterSignatureWithoutNames": "currency: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "currency", "call": "currency: currency", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("currency"), name: "currency", type: "String", range: CountableRange(289..<305), nameRange: CountableRange(289..<297))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onSelect(currency: String)  {
        
            return cuckoo_manager.call("onSelect(currency: String)",
                parameters: (currency),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "onChange", "returnSignature": "", "fullyQualifiedName": "onChange(amount: String)", "parameterSignature": "amount: String", "parameterSignatureWithoutNames": "amount: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "amount", "call": "amount: amount", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("amount"), name: "amount", type: "String", range: CountableRange(325..<339), nameRange: CountableRange(325..<331))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onChange(amount: String)  {
        
            return cuckoo_manager.call("onChange(amount: String)",
                parameters: (amount),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_CurrencyRatesPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func viewDidLoad() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesPresenterProtocol.self, method: "viewDidLoad()", parameterMatchers: matchers))
	    }
	    
	    func onFullReloadTableFinish() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesPresenterProtocol.self, method: "onFullReloadTableFinish()", parameterMatchers: matchers))
	    }
	    
	    func onSelect<M1: Cuckoo.Matchable>(currency: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: currency) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesPresenterProtocol.self, method: "onSelect(currency: String)", parameterMatchers: matchers))
	    }
	    
	    func onChange<M1: Cuckoo.Matchable>(amount: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: amount) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesPresenterProtocol.self, method: "onChange(amount: String)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_CurrencyRatesPresenterProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func viewDidLoad() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func onFullReloadTableFinish() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("onFullReloadTableFinish()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func onSelect<M1: Cuckoo.Matchable>(currency: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: currency) { $0 }]
	        return cuckoo_manager.verify("onSelect(currency: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func onChange<M1: Cuckoo.Matchable>(amount: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: amount) { $0 }]
	        return cuckoo_manager.verify("onChange(amount: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class CurrencyRatesPresenterProtocolStub: CurrencyRatesPresenterProtocol {
    

    

    
     func viewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func onFullReloadTableFinish()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func onSelect(currency: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func onChange(amount: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


class MockCurrencyRatesIntercatorInputProtocol: CurrencyRatesIntercatorInputProtocol, Cuckoo.ProtocolMock {
    typealias MocksType = CurrencyRatesIntercatorInputProtocol
    typealias Stubbing = __StubbingProxy_CurrencyRatesIntercatorInputProtocol
    typealias Verification = __VerificationProxy_CurrencyRatesIntercatorInputProtocol
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "select", "returnSignature": "", "fullyQualifiedName": "select(currency: String)", "parameterSignature": "currency: String", "parameterSignatureWithoutNames": "currency: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "currency", "call": "currency: currency", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("currency"), name: "currency", type: "String", range: CountableRange(409..<425), nameRange: CountableRange(409..<417))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func select(currency: String)  {
        
            return cuckoo_manager.call("select(currency: String)",
                parameters: (currency),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "change", "returnSignature": "", "fullyQualifiedName": "change(amount: String)", "parameterSignature": "amount: String", "parameterSignatureWithoutNames": "amount: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "amount", "call": "amount: amount", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("amount"), name: "amount", type: "String", range: CountableRange(443..<457), nameRange: CountableRange(443..<449))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func change(amount: String)  {
        
            return cuckoo_manager.call("change(amount: String)",
                parameters: (amount),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "retrieveRates", "returnSignature": "", "fullyQualifiedName": "retrieveRates()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func retrieveRates()  {
        
            return cuckoo_manager.call("retrieveRates()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "startRetrievingByTimer", "returnSignature": "", "fullyQualifiedName": "startRetrievingByTimer()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func startRetrievingByTimer()  {
        
            return cuckoo_manager.call("startRetrievingByTimer()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_CurrencyRatesIntercatorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func select<M1: Cuckoo.Matchable>(currency: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: currency) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesIntercatorInputProtocol.self, method: "select(currency: String)", parameterMatchers: matchers))
	    }
	    
	    func change<M1: Cuckoo.Matchable>(amount: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: amount) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesIntercatorInputProtocol.self, method: "change(amount: String)", parameterMatchers: matchers))
	    }
	    
	    func retrieveRates() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesIntercatorInputProtocol.self, method: "retrieveRates()", parameterMatchers: matchers))
	    }
	    
	    func startRetrievingByTimer() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesIntercatorInputProtocol.self, method: "startRetrievingByTimer()", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_CurrencyRatesIntercatorInputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func select<M1: Cuckoo.Matchable>(currency: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: currency) { $0 }]
	        return cuckoo_manager.verify("select(currency: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func change<M1: Cuckoo.Matchable>(amount: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: amount) { $0 }]
	        return cuckoo_manager.verify("change(amount: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func retrieveRates() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("retrieveRates()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func startRetrievingByTimer() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("startRetrievingByTimer()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class CurrencyRatesIntercatorInputProtocolStub: CurrencyRatesIntercatorInputProtocol {
    

    

    
     func select(currency: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func change(amount: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func retrieveRates()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func startRetrievingByTimer()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


class MockCurrencyRatesIntercatorOutputProtocol: CurrencyRatesIntercatorOutputProtocol, Cuckoo.ProtocolMock {
    typealias MocksType = CurrencyRatesIntercatorOutputProtocol
    typealias Stubbing = __StubbingProxy_CurrencyRatesIntercatorOutputProtocol
    typealias Verification = __VerificationProxy_CurrencyRatesIntercatorOutputProtocol
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "onError", "returnSignature": "", "fullyQualifiedName": "onError(reason: String)", "parameterSignature": "reason: String", "parameterSignatureWithoutNames": "reason: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "reason", "call": "reason: reason", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("reason"), name: "reason", type: "String", range: CountableRange(594..<608), nameRange: CountableRange(594..<600))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onError(reason: String)  {
        
            return cuckoo_manager.call("onError(reason: String)",
                parameters: (reason),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "onUnknownError", "returnSignature": "", "fullyQualifiedName": "onUnknownError()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onUnknownError()  {
        
            return cuckoo_manager.call("onUnknownError()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "onRetrieve", "returnSignature": "", "fullyQualifiedName": "onRetrieve(rates: [(name: String, rate: NSDecimalNumber)])", "parameterSignature": "rates: [(name: String, rate: NSDecimalNumber)]", "parameterSignatureWithoutNames": "rates: [(name: String, rate: NSDecimalNumber)]", "inputTypes": "[(name: String, rate: NSDecimalNumber)]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "rates", "call": "rates: rates", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("rates"), name: "rates", type: "[(name: String, rate: NSDecimalNumber)]", range: CountableRange(656..<702), nameRange: CountableRange(656..<661))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onRetrieve(rates: [(name: String, rate: NSDecimalNumber)])  {
        
            return cuckoo_manager.call("onRetrieve(rates: [(name: String, rate: NSDecimalNumber)])",
                parameters: (rates),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "onUpdate", "returnSignature": "", "fullyQualifiedName": "onUpdate(rates: [(name: String, rate: NSDecimalNumber)])", "parameterSignature": "rates: [(name: String, rate: NSDecimalNumber)]", "parameterSignatureWithoutNames": "rates: [(name: String, rate: NSDecimalNumber)]", "inputTypes": "[(name: String, rate: NSDecimalNumber)]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "rates", "call": "rates: rates", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("rates"), name: "rates", type: "[(name: String, rate: NSDecimalNumber)]", range: CountableRange(722..<768), nameRange: CountableRange(722..<727))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onUpdate(rates: [(name: String, rate: NSDecimalNumber)])  {
        
            return cuckoo_manager.call("onUpdate(rates: [(name: String, rate: NSDecimalNumber)])",
                parameters: (rates),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_CurrencyRatesIntercatorOutputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func onError<M1: Cuckoo.Matchable>(reason: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: reason) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesIntercatorOutputProtocol.self, method: "onError(reason: String)", parameterMatchers: matchers))
	    }
	    
	    func onUnknownError() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesIntercatorOutputProtocol.self, method: "onUnknownError()", parameterMatchers: matchers))
	    }
	    
	    func onRetrieve<M1: Cuckoo.Matchable>(rates: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([(name: String, rate: NSDecimalNumber)])> where M1.MatchedType == [(name: String, rate: NSDecimalNumber)] {
	        let matchers: [Cuckoo.ParameterMatcher<([(name: String, rate: NSDecimalNumber)])>] = [wrap(matchable: rates) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesIntercatorOutputProtocol.self, method: "onRetrieve(rates: [(name: String, rate: NSDecimalNumber)])", parameterMatchers: matchers))
	    }
	    
	    func onUpdate<M1: Cuckoo.Matchable>(rates: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([(name: String, rate: NSDecimalNumber)])> where M1.MatchedType == [(name: String, rate: NSDecimalNumber)] {
	        let matchers: [Cuckoo.ParameterMatcher<([(name: String, rate: NSDecimalNumber)])>] = [wrap(matchable: rates) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesIntercatorOutputProtocol.self, method: "onUpdate(rates: [(name: String, rate: NSDecimalNumber)])", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_CurrencyRatesIntercatorOutputProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func onError<M1: Cuckoo.Matchable>(reason: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: reason) { $0 }]
	        return cuckoo_manager.verify("onError(reason: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func onUnknownError() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("onUnknownError()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func onRetrieve<M1: Cuckoo.Matchable>(rates: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == [(name: String, rate: NSDecimalNumber)] {
	        let matchers: [Cuckoo.ParameterMatcher<([(name: String, rate: NSDecimalNumber)])>] = [wrap(matchable: rates) { $0 }]
	        return cuckoo_manager.verify("onRetrieve(rates: [(name: String, rate: NSDecimalNumber)])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func onUpdate<M1: Cuckoo.Matchable>(rates: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == [(name: String, rate: NSDecimalNumber)] {
	        let matchers: [Cuckoo.ParameterMatcher<([(name: String, rate: NSDecimalNumber)])>] = [wrap(matchable: rates) { $0 }]
	        return cuckoo_manager.verify("onUpdate(rates: [(name: String, rate: NSDecimalNumber)])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class CurrencyRatesIntercatorOutputProtocolStub: CurrencyRatesIntercatorOutputProtocol {
    

    

    
     func onError(reason: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func onUnknownError()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func onRetrieve(rates: [(name: String, rate: NSDecimalNumber)])  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func onUpdate(rates: [(name: String, rate: NSDecimalNumber)])  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: currency/Modules/CurrencyRates/Protocols/CurrencyRatesViewProtocol.swift at 2019-03-03 09:12:42 +0000

//
//  CurrencyRatesViewProtocol.swift
//  currency
//
//  Created by Ilya on 03/03/2019.
//  Copyright © 2019 Revolt. All rights reserved.
//

import Cuckoo

import Foundation

class MockCurrencyRatesViewProtocol: CurrencyRatesViewProtocol, Cuckoo.ProtocolMock {
    typealias MocksType = CurrencyRatesViewProtocol
    typealias Stubbing = __StubbingProxy_CurrencyRatesViewProtocol
    typealias Verification = __VerificationProxy_CurrencyRatesViewProtocol
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    
    // ["name": "presenter", "stubType": "ProtocolToBeStubbedProperty", "@type": "InstanceVariable", "type": "CurrencyRatesPresenterProtocol?", "isReadOnly": false, "accessibility": ""]
     var presenter: CurrencyRatesPresenterProtocol? {
        get {
            
            return cuckoo_manager.getter("presenter", superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall())
            
        }
        
        set {
            
            cuckoo_manager.setter("presenter", value: newValue, superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall())
            
        }
        
    }
    

    

    
    // ["name": "show", "returnSignature": "", "fullyQualifiedName": "show(rates: [RatesViewModel])", "parameterSignature": "rates: [RatesViewModel]", "parameterSignatureWithoutNames": "rates: [RatesViewModel]", "inputTypes": "[RatesViewModel]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "rates", "call": "rates: rates", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("rates"), name: "rates", type: "[RatesViewModel]", range: CountableRange(296..<319), nameRange: CountableRange(296..<301))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func show(rates: [RatesViewModel])  {
        
            return cuckoo_manager.call("show(rates: [RatesViewModel])",
                parameters: (rates),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "update", "returnSignature": "", "fullyQualifiedName": "update(rates: [RatesViewModel])", "parameterSignature": "rates: [RatesViewModel]", "parameterSignatureWithoutNames": "rates: [RatesViewModel]", "inputTypes": "[RatesViewModel]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "rates", "call": "rates: rates", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("rates"), name: "rates", type: "[RatesViewModel]", range: CountableRange(337..<360), nameRange: CountableRange(337..<342))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func update(rates: [RatesViewModel])  {
        
            return cuckoo_manager.call("update(rates: [RatesViewModel])",
                parameters: (rates),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "showError", "returnSignature": "", "fullyQualifiedName": "showError(reason: String)", "parameterSignature": "reason: String", "parameterSignatureWithoutNames": "reason: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "reason", "call": "reason: reason", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("reason"), name: "reason", type: "String", range: CountableRange(386..<400), nameRange: CountableRange(386..<392))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showError(reason: String)  {
        
            return cuckoo_manager.call("showError(reason: String)",
                parameters: (reason),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "showUnknownError", "returnSignature": "", "fullyQualifiedName": "showUnknownError()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showUnknownError()  {
        
            return cuckoo_manager.call("showUnknownError()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_CurrencyRatesViewProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var presenter: Cuckoo.ProtocolToBeStubbedProperty<MockCurrencyRatesViewProtocol, CurrencyRatesPresenterProtocol?> {
	        return .init(manager: cuckoo_manager, name: "presenter")
	    }
	    
	    
	    func show<M1: Cuckoo.Matchable>(rates: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([RatesViewModel])> where M1.MatchedType == [RatesViewModel] {
	        let matchers: [Cuckoo.ParameterMatcher<([RatesViewModel])>] = [wrap(matchable: rates) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesViewProtocol.self, method: "show(rates: [RatesViewModel])", parameterMatchers: matchers))
	    }
	    
	    func update<M1: Cuckoo.Matchable>(rates: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([RatesViewModel])> where M1.MatchedType == [RatesViewModel] {
	        let matchers: [Cuckoo.ParameterMatcher<([RatesViewModel])>] = [wrap(matchable: rates) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesViewProtocol.self, method: "update(rates: [RatesViewModel])", parameterMatchers: matchers))
	    }
	    
	    func showError<M1: Cuckoo.Matchable>(reason: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: reason) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesViewProtocol.self, method: "showError(reason: String)", parameterMatchers: matchers))
	    }
	    
	    func showUnknownError() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesViewProtocol.self, method: "showUnknownError()", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_CurrencyRatesViewProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var presenter: Cuckoo.VerifyProperty<CurrencyRatesPresenterProtocol?> {
	        return .init(manager: cuckoo_manager, name: "presenter", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func show<M1: Cuckoo.Matchable>(rates: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == [RatesViewModel] {
	        let matchers: [Cuckoo.ParameterMatcher<([RatesViewModel])>] = [wrap(matchable: rates) { $0 }]
	        return cuckoo_manager.verify("show(rates: [RatesViewModel])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func update<M1: Cuckoo.Matchable>(rates: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == [RatesViewModel] {
	        let matchers: [Cuckoo.ParameterMatcher<([RatesViewModel])>] = [wrap(matchable: rates) { $0 }]
	        return cuckoo_manager.verify("update(rates: [RatesViewModel])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showError<M1: Cuckoo.Matchable>(reason: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: reason) { $0 }]
	        return cuckoo_manager.verify("showError(reason: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showUnknownError() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("showUnknownError()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class CurrencyRatesViewProtocolStub: CurrencyRatesViewProtocol {
    
     var presenter: CurrencyRatesPresenterProtocol? {
        get {
            return DefaultValueRegistry.defaultValue(for: (CurrencyRatesPresenterProtocol?).self)
        }
        
        set { }
        
    }
    

    

    
     func show(rates: [RatesViewModel])  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func update(rates: [RatesViewModel])  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func showError(reason: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func showUnknownError()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}

