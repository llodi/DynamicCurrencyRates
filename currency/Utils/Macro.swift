//
//  Macro.swift
//
//
//  Created by Ilya Dolgopolov on 04.07.2018.
//  Copyright © 2019 Ilya Dolgopolov. All rights reserved.
//

import Foundation


@inline(__always) func _L(_ string: String!) -> String {    
    return NSLocalizedString(string, comment: "")//string.localized()
}

