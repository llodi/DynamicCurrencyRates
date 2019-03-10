//
//  CurrencyRates+Mapping.swift
//  currency
//
//  Created by Ilya on 09/03/2019.
//  Copyright © 2019 Revolt. All rights reserved.
//

import Foundation
import HandyJSON


extension CurrencyRates: HandyJSON {
    
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
}
