// MARK: - Mocks generated from file: currency/Entities/CurrencyRates.swift at 2019-03-10 08:42:41 +0000

//
//  Currencies.swift
//  currency
//
//  Created by Ilya Dolgopolov on 27/02/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import Cuckoo

import Foundation

class MockCurrencyRates: CurrencyRates, Cuckoo.ClassMock {
    typealias MocksType = CurrencyRates
    typealias Stubbing = __StubbingProxy_CurrencyRates
    typealias Verification = __VerificationProxy_CurrencyRates
    let cuckoo_manager = Cuckoo.MockManager(hasParent: true)

    
    // ["name": "base", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "String", "isReadOnly": false, "accessibility": ""]
     override var base: String {
        get {
            
            return cuckoo_manager.getter("base", superclassCall: super.base)
            
        }
        
        set {
            
            cuckoo_manager.setter("base", value: newValue, superclassCall: super.base = newValue)
            
        }
        
    }
    
    // ["name": "date", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "String?", "isReadOnly": false, "accessibility": ""]
     override var date: String? {
        get {
            
            return cuckoo_manager.getter("date", superclassCall: super.date)
            
        }
        
        set {
            
            cuckoo_manager.setter("date", value: newValue, superclassCall: super.date = newValue)
            
        }
        
    }
    
    // ["name": "rates", "stubType": "ClassToBeStubbedProperty", "@type": "InstanceVariable", "type": "[(name: String, rate: NSDecimalNumber)]", "isReadOnly": false, "accessibility": ""]
     override var rates: [(name: String, rate: NSDecimalNumber)] {
        get {
            
            return cuckoo_manager.getter("rates", superclassCall: super.rates)
            
        }
        
        set {
            
            cuckoo_manager.setter("rates", value: newValue, superclassCall: super.rates = newValue)
            
        }
        
    }
    

    

    

	struct __StubbingProxy_CurrencyRates: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    var base: Cuckoo.ClassToBeStubbedProperty<MockCurrencyRates, String> {
	        return .init(manager: cuckoo_manager, name: "base")
	    }
	    
	    var date: Cuckoo.ClassToBeStubbedProperty<MockCurrencyRates, String?> {
	        return .init(manager: cuckoo_manager, name: "date")
	    }
	    
	    var rates: Cuckoo.ClassToBeStubbedProperty<MockCurrencyRates, [(name: String, rate: NSDecimalNumber)]> {
	        return .init(manager: cuckoo_manager, name: "rates")
	    }
	    
	    
	}

	struct __VerificationProxy_CurrencyRates: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	    var base: Cuckoo.VerifyProperty<String> {
	        return .init(manager: cuckoo_manager, name: "base", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var date: Cuckoo.VerifyProperty<String?> {
	        return .init(manager: cuckoo_manager, name: "date", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	    var rates: Cuckoo.VerifyProperty<[(name: String, rate: NSDecimalNumber)]> {
	        return .init(manager: cuckoo_manager, name: "rates", callMatcher: callMatcher, sourceLocation: sourceLocation)
	    }
	    
	
	    
	}

}

 class CurrencyRatesStub: CurrencyRates {
    
     override var base: String {
        get {
            return DefaultValueRegistry.defaultValue(for: (String).self)
        }
        
        set { }
        
    }
    
     override var date: String? {
        get {
            return DefaultValueRegistry.defaultValue(for: (String?).self)
        }
        
        set { }
        
    }
    
     override var rates: [(name: String, rate: NSDecimalNumber)] {
        get {
            return DefaultValueRegistry.defaultValue(for: ([(name: String, rate: NSDecimalNumber)]).self)
        }
        
        set { }
        
    }
    

    

    
}


// MARK: - Mocks generated from file: currency/Modules/CurrencyRates/Protocols/CurrencyRatesModuleProtocols.swift at 2019-03-10 08:42:41 +0000

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
    
    // ["name": "viewWillAppear", "returnSignature": "", "fullyQualifiedName": "viewWillAppear()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func viewWillAppear()  {
        
            return cuckoo_manager.call("viewWillAppear()",
                parameters: (),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "viewWillDisappear", "returnSignature": "", "fullyQualifiedName": "viewWillDisappear()", "parameterSignature": "", "parameterSignatureWithoutNames": "", "inputTypes": "", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "", "call": "", "parameters": [], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func viewWillDisappear()  {
        
            return cuckoo_manager.call("viewWillDisappear()",
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
    
    // ["name": "onSelect", "returnSignature": "", "fullyQualifiedName": "onSelect(currency: String)", "parameterSignature": "currency: String", "parameterSignatureWithoutNames": "currency: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "currency", "call": "currency: currency", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("currency"), name: "currency", type: "String", range: CountableRange(344..<360), nameRange: CountableRange(344..<352))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onSelect(currency: String)  {
        
            return cuckoo_manager.call("onSelect(currency: String)",
                parameters: (currency),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "onChange", "returnSignature": "", "fullyQualifiedName": "onChange(amount: String)", "parameterSignature": "amount: String", "parameterSignatureWithoutNames": "amount: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "amount", "call": "amount: amount", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("amount"), name: "amount", type: "String", range: CountableRange(380..<394), nameRange: CountableRange(380..<386))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
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
    

	struct __StubbingProxy_CurrencyRatesPresenterProtocol: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func viewDidLoad() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesPresenterProtocol.self, method: "viewDidLoad()", parameterMatchers: matchers))
	    }
	    
	    func viewWillAppear() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesPresenterProtocol.self, method: "viewWillAppear()", parameterMatchers: matchers))
	    }
	    
	    func viewWillDisappear() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesPresenterProtocol.self, method: "viewWillDisappear()", parameterMatchers: matchers))
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
	    
	    func onInvokeTimer() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesPresenterProtocol.self, method: "onInvokeTimer()", parameterMatchers: matchers))
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
	    func viewWillAppear() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewWillAppear()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func viewWillDisappear() -> Cuckoo.__DoNotUse<Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("viewWillDisappear()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
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

 class CurrencyRatesPresenterProtocolStub: CurrencyRatesPresenterProtocol {
    

    

    
     func viewDidLoad()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func viewWillAppear()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func viewWillDisappear()  {
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


class MockCurrencyRatesIntercatorInputProtocol: CurrencyRatesIntercatorInputProtocol, Cuckoo.ProtocolMock {
    typealias MocksType = CurrencyRatesIntercatorInputProtocol
    typealias Stubbing = __StubbingProxy_CurrencyRatesIntercatorInputProtocol
    typealias Verification = __VerificationProxy_CurrencyRatesIntercatorInputProtocol
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "select", "returnSignature": "", "fullyQualifiedName": "select(currency: String)", "parameterSignature": "currency: String", "parameterSignatureWithoutNames": "currency: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "currency", "call": "currency: currency", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("currency"), name: "currency", type: "String", range: CountableRange(494..<510), nameRange: CountableRange(494..<502))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func select(currency: String)  {
        
            return cuckoo_manager.call("select(currency: String)",
                parameters: (currency),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "change", "returnSignature": "", "fullyQualifiedName": "change(amount: String)", "parameterSignature": "amount: String", "parameterSignatureWithoutNames": "amount: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "amount", "call": "amount: amount", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("amount"), name: "amount", type: "String", range: CountableRange(528..<542), nameRange: CountableRange(528..<534))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func change(amount: String)  {
        
            return cuckoo_manager.call("change(amount: String)",
                parameters: (amount),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "retrieveRates", "returnSignature": "", "fullyQualifiedName": "retrieveRates(firstLaunch: Bool)", "parameterSignature": "firstLaunch: Bool", "parameterSignatureWithoutNames": "firstLaunch: Bool", "inputTypes": "Bool", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "firstLaunch", "call": "firstLaunch: firstLaunch", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("firstLaunch"), name: "firstLaunch", type: "Bool", range: CountableRange(567..<584), nameRange: CountableRange(567..<578))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func retrieveRates(firstLaunch: Bool)  {
        
            return cuckoo_manager.call("retrieveRates(firstLaunch: Bool)",
                parameters: (firstLaunch),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "timer", "returnSignature": "", "fullyQualifiedName": "timer(duration: @escaping (Double) -> ())", "parameterSignature": "duration: @escaping (Double) -> ()", "parameterSignatureWithoutNames": "duration: @escaping (Double) -> ()", "inputTypes": "(Double) -> ()", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": true, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "duration", "call": "duration: duration", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("duration"), name: "duration", type: "@escaping (Double) -> ()", range: CountableRange(601..<635), nameRange: CountableRange(601..<609))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func timer(duration: @escaping (Double) -> ())  {
        
            return cuckoo_manager.call("timer(duration: @escaping (Double) -> ())",
                parameters: (duration),
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
	    
	    func retrieveRates<M1: Cuckoo.Matchable>(firstLaunch: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Bool)> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: firstLaunch) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesIntercatorInputProtocol.self, method: "retrieveRates(firstLaunch: Bool)", parameterMatchers: matchers))
	    }
	    
	    func timer<M1: Cuckoo.Matchable>(duration: M1) -> Cuckoo.ProtocolStubNoReturnFunction<((Double) -> ())> where M1.MatchedType == (Double) -> () {
	        let matchers: [Cuckoo.ParameterMatcher<((Double) -> ())>] = [wrap(matchable: duration) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesIntercatorInputProtocol.self, method: "timer(duration: @escaping (Double) -> ())", parameterMatchers: matchers))
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
	    func retrieveRates<M1: Cuckoo.Matchable>(firstLaunch: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Bool {
	        let matchers: [Cuckoo.ParameterMatcher<(Bool)>] = [wrap(matchable: firstLaunch) { $0 }]
	        return cuckoo_manager.verify("retrieveRates(firstLaunch: Bool)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func timer<M1: Cuckoo.Matchable>(duration: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == (Double) -> () {
	        let matchers: [Cuckoo.ParameterMatcher<((Double) -> ())>] = [wrap(matchable: duration) { $0 }]
	        return cuckoo_manager.verify("timer(duration: @escaping (Double) -> ())", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
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
    
     func retrieveRates(firstLaunch: Bool)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func timer(duration: @escaping (Double) -> ())  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


class MockCurrencyRatesIntercatorOutputProtocol: CurrencyRatesIntercatorOutputProtocol, Cuckoo.ProtocolMock {
    typealias MocksType = CurrencyRatesIntercatorOutputProtocol
    typealias Stubbing = __StubbingProxy_CurrencyRatesIntercatorOutputProtocol
    typealias Verification = __VerificationProxy_CurrencyRatesIntercatorOutputProtocol
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "onError", "returnSignature": "", "fullyQualifiedName": "onError(reason: String)", "parameterSignature": "reason: String", "parameterSignatureWithoutNames": "reason: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "reason", "call": "reason: reason", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("reason"), name: "reason", type: "String", range: CountableRange(713..<727), nameRange: CountableRange(713..<719))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
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
    
    // ["name": "onRetrieve", "returnSignature": "", "fullyQualifiedName": "onRetrieve(rates: [(name: String, rate: NSDecimalNumber)])", "parameterSignature": "rates: [(name: String, rate: NSDecimalNumber)]", "parameterSignatureWithoutNames": "rates: [(name: String, rate: NSDecimalNumber)]", "inputTypes": "[(name: String, rate: NSDecimalNumber)]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "rates", "call": "rates: rates", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("rates"), name: "rates", type: "[(name: String, rate: NSDecimalNumber)]", range: CountableRange(775..<821), nameRange: CountableRange(775..<780))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func onRetrieve(rates: [(name: String, rate: NSDecimalNumber)])  {
        
            return cuckoo_manager.call("onRetrieve(rates: [(name: String, rate: NSDecimalNumber)])",
                parameters: (rates),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "onUpdate", "returnSignature": "", "fullyQualifiedName": "onUpdate(rates: [(name: String, rate: NSDecimalNumber)])", "parameterSignature": "rates: [(name: String, rate: NSDecimalNumber)]", "parameterSignatureWithoutNames": "rates: [(name: String, rate: NSDecimalNumber)]", "inputTypes": "[(name: String, rate: NSDecimalNumber)]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "rates", "call": "rates: rates", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("rates"), name: "rates", type: "[(name: String, rate: NSDecimalNumber)]", range: CountableRange(841..<887), nameRange: CountableRange(841..<846))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
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


// MARK: - Mocks generated from file: currency/Modules/CurrencyRates/Protocols/CurrencyRatesViewProtocol.swift at 2019-03-10 08:42:41 +0000

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
    

    

    
    // ["name": "startTimer", "returnSignature": "", "fullyQualifiedName": "startTimer(with: Double)", "parameterSignature": "with duration: Double", "parameterSignatureWithoutNames": "duration: Double", "inputTypes": "Double", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "duration", "call": "with: duration", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("with"), name: "duration", type: "Double", range: CountableRange(302..<323), nameRange: CountableRange(302..<306))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
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
    
    // ["name": "show", "returnSignature": "", "fullyQualifiedName": "show(rates: [RatesViewModel])", "parameterSignature": "rates: [RatesViewModel]", "parameterSignatureWithoutNames": "rates: [RatesViewModel]", "inputTypes": "[RatesViewModel]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "rates", "call": "rates: rates", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("rates"), name: "rates", type: "[RatesViewModel]", range: CountableRange(366..<389), nameRange: CountableRange(366..<371))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func show(rates: [RatesViewModel])  {
        
            return cuckoo_manager.call("show(rates: [RatesViewModel])",
                parameters: (rates),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "update", "returnSignature": "", "fullyQualifiedName": "update(rates: [RatesViewModel])", "parameterSignature": "rates: [RatesViewModel]", "parameterSignatureWithoutNames": "rates: [RatesViewModel]", "inputTypes": "[RatesViewModel]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "rates", "call": "rates: rates", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("rates"), name: "rates", type: "[RatesViewModel]", range: CountableRange(407..<430), nameRange: CountableRange(407..<412))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func update(rates: [RatesViewModel])  {
        
            return cuckoo_manager.call("update(rates: [RatesViewModel])",
                parameters: (rates),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "showError", "returnSignature": "", "fullyQualifiedName": "showError(reason: String)", "parameterSignature": "reason: String", "parameterSignatureWithoutNames": "reason: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "reason", "call": "reason: reason", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("reason"), name: "reason", type: "String", range: CountableRange(456..<470), nameRange: CountableRange(456..<462))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
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
	    
	    
	    func startTimer<M1: Cuckoo.Matchable>(with duration: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Double)> where M1.MatchedType == Double {
	        let matchers: [Cuckoo.ParameterMatcher<(Double)>] = [wrap(matchable: duration) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesViewProtocol.self, method: "startTimer(with: Double)", parameterMatchers: matchers))
	    }
	    
	    func stopTimer() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyRatesViewProtocol.self, method: "stopTimer()", parameterMatchers: matchers))
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
    
     func showUnknownError()  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


// MARK: - Mocks generated from file: currency/Services/CurrencyService.swift at 2019-03-10 08:42:41 +0000

//
//  CurrencyService.swift
//  currency
//
//  Created by Ilya Dolgopolov on 27/02/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import Cuckoo

import Foundation

class MockCurrencyService: CurrencyService, Cuckoo.ClassMock {
    typealias MocksType = CurrencyService
    typealias Stubbing = __StubbingProxy_CurrencyService
    typealias Verification = __VerificationProxy_CurrencyService
    let cuckoo_manager = Cuckoo.MockManager(hasParent: true)

    

    

    
    // ["name": "retrieveCurrencyRates", "returnSignature": "", "fullyQualifiedName": "retrieveCurrencyRates(currency: String, completion: @escaping ((CurrencyRates?, ApiErrorProtocol?) -> ()))", "parameterSignature": "currency: String, completion: @escaping ((CurrencyRates?, ApiErrorProtocol?) -> ())", "parameterSignatureWithoutNames": "currency: String, completion: @escaping ((CurrencyRates?, ApiErrorProtocol?) -> ())", "inputTypes": "String, ((CurrencyRates?, ApiErrorProtocol?) -> ())", "isThrowing": false, "isInit": false, "isOverriding": true, "hasClosureParams": true, "@type": "ClassMethod", "accessibility": "", "parameterNames": "currency, completion", "call": "currency: currency, completion: completion", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("currency"), name: "currency", type: "String", range: CountableRange(237..<253), nameRange: CountableRange(237..<245)), CuckooGeneratorFramework.MethodParameter(label: Optional("completion"), name: "completion", type: "@escaping ((CurrencyRates?, ApiErrorProtocol?) -> ())", range: CountableRange(255..<320), nameRange: CountableRange(255..<265))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ClassStubNoReturnFunction"]
     override func retrieveCurrencyRates(currency: String, completion: @escaping ((CurrencyRates?, ApiErrorProtocol?) -> ()))  {
        
            return cuckoo_manager.call("retrieveCurrencyRates(currency: String, completion: @escaping ((CurrencyRates?, ApiErrorProtocol?) -> ()))",
                parameters: (currency, completion),
                superclassCall:
                    
                    super.retrieveCurrencyRates(currency: currency, completion: completion)
                    )
        
    }
    

	struct __StubbingProxy_CurrencyService: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func retrieveCurrencyRates<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(currency: M1, completion: M2) -> Cuckoo.ClassStubNoReturnFunction<(String, ((CurrencyRates?, ApiErrorProtocol?) -> ()))> where M1.MatchedType == String, M2.MatchedType == ((CurrencyRates?, ApiErrorProtocol?) -> ()) {
	        let matchers: [Cuckoo.ParameterMatcher<(String, ((CurrencyRates?, ApiErrorProtocol?) -> ()))>] = [wrap(matchable: currency) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrencyService.self, method: "retrieveCurrencyRates(currency: String, completion: @escaping ((CurrencyRates?, ApiErrorProtocol?) -> ()))", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_CurrencyService: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func retrieveCurrencyRates<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(currency: M1, completion: M2) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String, M2.MatchedType == ((CurrencyRates?, ApiErrorProtocol?) -> ()) {
	        let matchers: [Cuckoo.ParameterMatcher<(String, ((CurrencyRates?, ApiErrorProtocol?) -> ()))>] = [wrap(matchable: currency) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("retrieveCurrencyRates(currency: String, completion: @escaping ((CurrencyRates?, ApiErrorProtocol?) -> ()))", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class CurrencyServiceStub: CurrencyService {
    

    

    
     override func retrieveCurrencyRates(currency: String, completion: @escaping ((CurrencyRates?, ApiErrorProtocol?) -> ()))  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}

