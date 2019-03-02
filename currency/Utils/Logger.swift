//
//  Logger.swift
//  Yammi
//
//  Created by Ilya Dolgopolov on 30/01/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import Foundation

class Logger {
    
    static func printd(_ object: Any?) {
        #if DEBUG
        print(object ?? "")
        #endif
    }
}
