//
//  NSObject.swift
//  
//
//  Created by Ilya on 14.08.2018.
//  Copyright © 2018 Ilya. All rights reserved.
//

import Foundation

extension NSObject {
    class var nameOfClass: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
