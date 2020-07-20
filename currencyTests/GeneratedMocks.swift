// MARK: - Mocks generated from file: currency/Modules/CurrencyRates/Protocols/CurrencyRatesIntercatorInputIO.swift at 2020-07-20 14:56:14 +0000

//
//  CurrencyModuleProtocols.swift
//  currency
//
//  Created by Ilya on 27/02/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import Cuckoo

import Foundation

class MockCurrencyRatesIntercatorInputProtocol: CurrencyRatesIntercatorInputProtocol, Cuckoo.ProtocolMock {
    typealias MocksType = CurrencyRatesIntercatorInputProtocol
    typealias Stubbing = __StubbingProxy_CurrencyRatesIntercatorInputProtocol
    typealias Verification = __VerificationProxy_CurrencyRatesIntercatorInputProtocol
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "retrieveRates", "returnSignature": "", "fullyQualifiedName": "retrieveRates(currency: String, amount: NSDecimalNumber)", "parameterSignature": "currency: String, amount: NSDecimalNumber", "parameterSignatureWithoutNames": "currency: String, amount: NSDecimalNumber", "inputTypes": "String, NSDecimalNumber", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "currency, amount", "call": "currency: currency, amount: amount", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("currency"), name: "currency", type: "String", range: CountableRange(232..<248), nameRange: CountableRange(232..<240)), CuckooGeneratorFramework.MethodParameter(label: Optional("amount"), name: "amount", type: "NSDecimalNumber", range: CountableRange(250..<273), nameRange: CountableRange(250..<256))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func retrieveRates(currency: String, amount: NSDecimalNumber)  {
        
            return cuckoo_manager.call("retrieveRates(currency: String, amount: NSDecimalNumber)",
                parameters: (currency, amount),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_CurrencyRatesIntercatorInputProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func retrieveRates<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(currency: M1, amount: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(String, NSDecimalNumber)> where M1.MatchedType == String, M2.MatchedType == NSDecimalNumber {
	        let matchers: [Cuckoo.ParameterMatcher<(String, NSDecimalNumber)>] = [wrap(matchable: currency) { $0.0 }, wrap(matchable: amount) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesIntercatorInputProtocol.self, method: "retrieveRates(currency: String, amount: NSDecimalNumber)", parameterMatchers: matchers))
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
	    func retrieveRates<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(currency: M1, amount: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == NSDecimalNumber {
	        let matchers: [Cuckoo.ParameterMatcher<(String, NSDecimalNumber)>] = [wrap(matchable: currency) { $0.0 }, wrap(matchable: amount) { $0.1 }]
	        return cuckoo_manager.verify("retrieveRates(currency: String, amount: NSDecimalNumber)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class CurrencyRatesIntercatorInputProtocolStub: CurrencyRatesIntercatorInputProtocol {
    

    

    
     func retrieveRates(currency: String, amount: NSDecimalNumber)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


class MockCurrencyRatesIntercatorOutputProtocol: CurrencyRatesIntercatorOutputProtocol, Cuckoo.ProtocolMock {
    typealias MocksType = CurrencyRatesIntercatorOutputProtocol
    typealias Stubbing = __StubbingProxy_CurrencyRatesIntercatorOutputProtocol
    typealias Verification = __VerificationProxy_CurrencyRatesIntercatorOutputProtocol
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "onError", "returnSignature": "", "fullyQualifiedName": "onError(reason: String)", "parameterSignature": "reason: String", "parameterSignatureWithoutNames": "reason: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "reason", "call": "reason: reason", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("reason"), name: "reason", type: "String", range: CountableRange(351..<365), nameRange: CountableRange(351..<357))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onError(reason: String)  {
        
            return cuckoo_manager.call("onError(reason: String)",
                parameters: (reason),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "onRetrieve", "returnSignature": "", "fullyQualifiedName": "onRetrieve(rates: [(name: String, rate: NSDecimalNumber)])", "parameterSignature": "rates: [(name: String, rate: NSDecimalNumber)]", "parameterSignatureWithoutNames": "rates: [(name: String, rate: NSDecimalNumber)]", "inputTypes": "[(name: String, rate: NSDecimalNumber)]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "rates", "call": "rates: rates", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("rates"), name: "rates", type: "[(name: String, rate: NSDecimalNumber)]", range: CountableRange(387..<433), nameRange: CountableRange(387..<392))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onRetrieve(rates: [(name: String, rate: NSDecimalNumber)])  {
        
            return cuckoo_manager.call("onRetrieve(rates: [(name: String, rate: NSDecimalNumber)])",
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
	    
	    func onRetrieve<M1: Cuckoo.Matchable>(rates: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([(name: String, rate: NSDecimalNumber)])> where M1.MatchedType == [(name: String, rate: NSDecimalNumber)] {
	        let matchers: [Cuckoo.ParameterMatcher<([(name: String, rate: NSDecimalNumber)])>] = [wrap(matchable: rates) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesIntercatorOutputProtocol.self, method: "onRetrieve(rates: [(name: String, rate: NSDecimalNumber)])", parameterMatchers: matchers))
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
	    func onRetrieve<M1: Cuckoo.Matchable>(rates: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == [(name: String, rate: NSDecimalNumber)] {
	        let matchers: [Cuckoo.ParameterMatcher<([(name: String, rate: NSDecimalNumber)])>] = [wrap(matchable: rates) { $0 }]
	        return cuckoo_manager.verify("onRetrieve(rates: [(name: String, rate: NSDecimalNumber)])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class CurrencyRatesIntercatorOutputProtocolStub: CurrencyRatesIntercatorOutputProtocol {
    

    

    
     func onError(reason: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func onRetrieve(rates: [(name: String, rate: NSDecimalNumber)])  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: currency/Modules/CurrencyRates/Protocols/CurrencyRatesViewIO.swift at 2020-07-20 14:56:14 +0000

//
//  CurrencyRatesViewProtocol.swift
//  currency
//
//  Created by Ilya on 03/03/2019.
//  Copyright © 2019 Revolt. All rights reserved.
//

import Cuckoo

import Foundation

class MockCurrencyRatesViewInput: CurrencyRatesViewInput, Cuckoo.ProtocolMock {
    typealias MocksType = CurrencyRatesViewInput
    typealias Stubbing = __StubbingProxy_CurrencyRatesViewInput
    typealias Verification = __VerificationProxy_CurrencyRatesViewInput
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    
    // ["name": "output", "stubType": "ProtocolToBeStubbedProperty", "@type": "InstanceVariable", "type": "CurrencyRatesViewOutput?", "isReadOnly": false, "accessibility": ""]
     var output: CurrencyRatesViewOutput? {
        get {
            
            return cuckoo_manager.getter("output", superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall())
            
        }
        
        set {
            
            cuckoo_manager.setter("output", value: newValue, superclassCall: Cuckoo.MockManager.crashOnProtocolSuperclassCall())
            
        }
        
    }
    

    

    
    // ["name": "startTimer", "returnSignature": "", "fullyQualifiedName": "startTimer(with: Double)", "parameterSignature": "with duration: Double", "parameterSignatureWithoutNames": "duration: Double", "inputTypes": "Double", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "duration", "call": "with: duration", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("with"), name: "duration", type: "Double", range: CountableRange(289..<310), nameRange: CountableRange(289..<293))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func startTimer(with duration: Double)  {
        
            return cuckoo_manager.call("startTimer(with: Double)",
                parameters: (duration),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "stopTimer", "returnSignature": "", "fullyQualifiedName": "stopTimer()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func stopTimer()  {
        
            return cuckoo_manager.call("stopTimer()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "show", "returnSignature": "", "fullyQualifiedName": "show(rates: [RatesViewModel])", "parameterSignature": "rates: [RatesViewModel]", "parameterSignatureWithoutNames": "rates: [RatesViewModel]", "inputTypes": "[RatesViewModel]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "rates", "call": "rates: rates", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("rates"), name: "rates", type: "[RatesViewModel]", range: CountableRange(353..<376), nameRange: CountableRange(353..<358))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func show(rates: [RatesViewModel])  {
        
            return cuckoo_manager.call("show(rates: [RatesViewModel])",
                parameters: (rates),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "update", "returnSignature": "", "fullyQualifiedName": "update(rates: [RatesViewModel])", "parameterSignature": "rates: [RatesViewModel]", "parameterSignatureWithoutNames": "rates: [RatesViewModel]", "inputTypes": "[RatesViewModel]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "rates", "call": "rates: rates", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("rates"), name: "rates", type: "[RatesViewModel]", range: CountableRange(394..<417), nameRange: CountableRange(394..<399))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func update(rates: [RatesViewModel])  {
        
            return cuckoo_manager.call("update(rates: [RatesViewModel])",
                parameters: (rates),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "showError", "returnSignature": "", "fullyQualifiedName": "showError(reason: String)", "parameterSignature": "reason: String", "parameterSignatureWithoutNames": "reason: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "reason", "call": "reason: reason", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("reason"), name: "reason", type: "String", range: CountableRange(443..<457), nameRange: CountableRange(443..<449))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func showError(reason: String)  {
        
            return cuckoo_manager.call("showError(reason: String)",
                parameters: (reason),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_CurrencyRatesViewInput: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var output: Cuckoo.ProtocolToBeStubbedProperty<MockCurrencyRatesViewInput, CurrencyRatesViewOutput?> {
	        return .init(manager: cuckoo_manager, name: "output")
	    }
	    
	    
	    func startTimer<M1: Cuckoo.Matchable>(with duration: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Double)> where M1.MatchedType == Double {
	        let matchers: [Cuckoo.ParameterMatcher<(Double)>] = [wrap(matchable: duration) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesViewInput.self, method: "startTimer(with: Double)", parameterMatchers: matchers))
	    }
	    
	    func stopTimer() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesViewInput.self, method: "stopTimer()", parameterMatchers: matchers))
	    }
	    
	    func show<M1: Cuckoo.Matchable>(rates: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([RatesViewModel])> where M1.MatchedType == [RatesViewModel] {
	        let matchers: [Cuckoo.ParameterMatcher<([RatesViewModel])>] = [wrap(matchable: rates) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesViewInput.self, method: "show(rates: [RatesViewModel])", parameterMatchers: matchers))
	    }
	    
	    func update<M1: Cuckoo.Matchable>(rates: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([RatesViewModel])> where M1.MatchedType == [RatesViewModel] {
	        let matchers: [Cuckoo.ParameterMatcher<([RatesViewModel])>] = [wrap(matchable: rates) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesViewInput.self, method: "update(rates: [RatesViewModel])", parameterMatchers: matchers))
	    }
	    
	    func showError<M1: Cuckoo.Matchable>(reason: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: reason) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesViewInput.self, method: "showError(reason: String)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_CurrencyRatesViewInput: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var output: Cuckoo.VerifyProperty<CurrencyRatesViewOutput?> {
	        return .init(manager: cuckoo_manager, name: "output", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	    @discardableResult
	    func startTimer<M1: Cuckoo.Matchable>(with duration: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Double {
	        let matchers: [Cuckoo.ParameterMatcher<(Double)>] = [wrap(matchable: duration) { $0 }]
	        return cuckoo_manager.verify("startTimer(with: Double)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func stopTimer() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("stopTimer()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
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
	    
	}

}

 class CurrencyRatesViewInputStub: CurrencyRatesViewInput {
    
     var output: CurrencyRatesViewOutput? {
        get {
            return DefaultValueRegistry.defaultValue(for: (CurrencyRatesViewOutput?).self)
        }
        
        set { }
        
    }
    

    

    
     func startTimer(with duration: Double)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func stopTimer()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
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
    
}


class MockCurrencyRatesViewOutput: CurrencyRatesViewOutput, Cuckoo.ProtocolMock {
    typealias MocksType = CurrencyRatesViewOutput
    typealias Stubbing = __StubbingProxy_CurrencyRatesViewOutput
    typealias Verification = __VerificationProxy_CurrencyRatesViewOutput
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "onViewDidLoad", "returnSignature": "", "fullyQualifiedName": "onViewDidLoad()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onViewDidLoad()  {
        
            return cuckoo_manager.call("onViewDidLoad()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "onViewWillAppear", "returnSignature": "", "fullyQualifiedName": "onViewWillAppear()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onViewWillAppear()  {
        
            return cuckoo_manager.call("onViewWillAppear()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "onViewWillDisappear", "returnSignature": "", "fullyQualifiedName": "onViewWillDisappear()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onViewWillDisappear()  {
        
            return cuckoo_manager.call("onViewWillDisappear()",
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
    
    // ["name": "onSelect", "returnSignature": "", "fullyQualifiedName": "onSelect(currency: String)", "parameterSignature": "currency: String", "parameterSignatureWithoutNames": "currency: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "currency", "call": "currency: currency", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("currency"), name: "currency", type: "String", range: CountableRange(636..<652), nameRange: CountableRange(636..<644))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onSelect(currency: String)  {
        
            return cuckoo_manager.call("onSelect(currency: String)",
                parameters: (currency),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "onChange", "returnSignature": "", "fullyQualifiedName": "onChange(amount: String)", "parameterSignature": "amount: String", "parameterSignatureWithoutNames": "amount: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "amount", "call": "amount: amount", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("amount"), name: "amount", type: "String", range: CountableRange(672..<686), nameRange: CountableRange(672..<678))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onChange(amount: String)  {
        
            return cuckoo_manager.call("onChange(amount: String)",
                parameters: (amount),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "onInvokeTimer", "returnSignature": "", "fullyQualifiedName": "onInvokeTimer()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onInvokeTimer()  {
        
            return cuckoo_manager.call("onInvokeTimer()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_CurrencyRatesViewOutput: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func onViewDidLoad() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesViewOutput.self, method: "onViewDidLoad()", parameterMatchers: matchers))
	    }
	    
	    func onViewWillAppear() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesViewOutput.self, method: "onViewWillAppear()", parameterMatchers: matchers))
	    }
	    
	    func onViewWillDisappear() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesViewOutput.self, method: "onViewWillDisappear()", parameterMatchers: matchers))
	    }
	    
	    func onFullReloadTableFinish() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesViewOutput.self, method: "onFullReloadTableFinish()", parameterMatchers: matchers))
	    }
	    
	    func onSelect<M1: Cuckoo.Matchable>(currency: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: currency) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesViewOutput.self, method: "onSelect(currency: String)", parameterMatchers: matchers))
	    }
	    
	    func onChange<M1: Cuckoo.Matchable>(amount: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: amount) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesViewOutput.self, method: "onChange(amount: String)", parameterMatchers: matchers))
	    }
	    
	    func onInvokeTimer() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesViewOutput.self, method: "onInvokeTimer()", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_CurrencyRatesViewOutput: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func onViewDidLoad() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("onViewDidLoad()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func onViewWillAppear() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("onViewWillAppear()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func onViewWillDisappear() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("onViewWillDisappear()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
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
	    
	    @discardableResult
	    func onInvokeTimer() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("onInvokeTimer()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class CurrencyRatesViewOutputStub: CurrencyRatesViewOutput {
    

    

    
     func onViewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func onViewWillAppear()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func onViewWillDisappear()  {
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
    
     func onInvokeTimer()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: currency/Services/CurrencyServiceProtocol.swift at 2020-07-20 14:56:14 +0000

//
//  CurrencyServiceProtocol.swift
//  currency
//
//  Created by Ilya Dolgopolov on 16.10.2019.
//  Copyright © 2019 Revolt. All rights reserved.
//

import Cuckoo

import Foundation

class MockCurrencyServiceProtocol: CurrencyServiceProtocol, Cuckoo.ProtocolMock {
    typealias MocksType = CurrencyServiceProtocol
    typealias Stubbing = __StubbingProxy_CurrencyServiceProtocol
    typealias Verification = __VerificationProxy_CurrencyServiceProtocol
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "retrieveCurrencyRates", "returnSignature": "", "fullyQualifiedName": "retrieveCurrencyRates(currency: String, completion: @escaping ((Result<CurrencyRates, ApiError>) -> ()))", "parameterSignature": "currency: String, completion: @escaping ((Result<CurrencyRates, ApiError>) -> ())", "parameterSignatureWithoutNames": "currency: String, completion: @escaping ((Result<CurrencyRates, ApiError>) -> ())", "inputTypes": "String, ((Result<CurrencyRates, ApiError>) -> ())", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "currency, completion", "call": "currency: currency, completion: completion", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("currency"), name: "currency", type: "String", range: CountableRange(264..<280), nameRange: CountableRange(264..<272)), CuckooGeneratorFramework.MethodParameter(label: Optional("completion"), name: "completion", type: "@escaping ((Result<CurrencyRates, ApiError>) -> ())", range: CountableRange(313..<376), nameRange: CountableRange(313..<323))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func retrieveCurrencyRates(currency: String, completion: @escaping ((Result<CurrencyRates, ApiError>) -> ()))  {
        
            return cuckoo_manager.call("retrieveCurrencyRates(currency: String, completion: @escaping ((Result<CurrencyRates, ApiError>) -> ()))",
                parameters: (currency, completion),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_CurrencyServiceProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func retrieveCurrencyRates<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(currency: M1, completion: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(String, ((Result<CurrencyRates, ApiError>) -> ()))> where M1.MatchedType == String, M2.MatchedType == ((Result<CurrencyRates, ApiError>) -> ()) {
	        let matchers: [Cuckoo.ParameterMatcher<(String, ((Result<CurrencyRates, ApiError>) -> ()))>] = [wrap(matchable: currency) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyServiceProtocol.self, method: "retrieveCurrencyRates(currency: String, completion: @escaping ((Result<CurrencyRates, ApiError>) -> ()))", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_CurrencyServiceProtocol: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func retrieveCurrencyRates<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(currency: M1, completion: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == ((Result<CurrencyRates, ApiError>) -> ()) {
	        let matchers: [Cuckoo.ParameterMatcher<(String, ((Result<CurrencyRates, ApiError>) -> ()))>] = [wrap(matchable: currency) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("retrieveCurrencyRates(currency: String, completion: @escaping ((Result<CurrencyRates, ApiError>) -> ()))", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class CurrencyServiceProtocolStub: CurrencyServiceProtocol {
    

    

    
     func retrieveCurrencyRates(currency: String, completion: @escaping ((Result<CurrencyRates, ApiError>) -> ()))  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}

