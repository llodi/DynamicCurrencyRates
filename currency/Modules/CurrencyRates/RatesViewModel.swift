//
//  RatesViewModel.swift
//  currency
//
//  Created by Ilya on 02/03/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import Foundation


class RatesViewModel {
    var currency: String
    var rate:String
    
    init(currency: String, rate: String) {
        self.currency = currency
        self.rate = rate
    }
}
