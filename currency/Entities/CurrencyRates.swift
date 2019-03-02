//
//  Currencies.swift
//  currency
//
//  Created by Ilya Dolgopolov on 27/02/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import Foundation
import HandyJSON


class CurrencyRates: ApiConvertable {
    var base: String = ""
    var date: String?
    var rates: [(name: String, rate: NSDecimalNumber)] = []
    
    
    
    func mapping(mapper: HelpingMapper) {
        
        
        mapper <<< rates <-- TransformOf<[(name: String, rate: NSDecimalNumber)], NSDictionary>(fromJSON:
            { rawDict -> [(name: String, rate: NSDecimalNumber)]? in
                
                if let dict = rawDict {
                    let array = dict.compactMap { item -> (name: String, rate: NSDecimalNumber)? in
                        let transform = NSDecimalNumberTransform()
                        if let key = item.key as? String,
                            let value = transform.transformFromJSON(item.value) {
                            return (name: key, rate: value)
                        }
                        return nil
                    }
                    return array
                }
                
                return nil
                
        }, toJSON: { (tuple) -> NSDictionary in
            return [:]
        })
    }
    
    required init() { }
}


class CurrencyRatesRequstArguments: ApiConvertable {
    var base: String?
    
    required init() { }
}
