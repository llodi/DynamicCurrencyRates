//
//  DecimalFormatterUtils.swift
//  Yammi
//
//  Created by Ilya Dolgopolov on 26/02/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import Foundation


struct DecimalFormatterUtils {
    
    static func convert(decimal: NSDecimalNumber) -> String {
        
        let formatter = NumberFormatter()
        formatter.minimumIntegerDigits = 1
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        
        let decimalSeparator = Locale.current.decimalSeparator ?? ","
        return formatter.string(from: decimal) ?? "0\(decimalSeparator)00"
    }
}
