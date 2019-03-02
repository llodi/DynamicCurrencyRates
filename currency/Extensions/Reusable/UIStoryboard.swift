//
//  UIStoryboard.swift
//  
//
//  Created by Ilya on 09.07.2018.
//  Copyright © 2018 Ilya. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {
    static func create(fromStoryboardId id: Storyboards, bundle: Bundle? = nil) -> UIStoryboard {
        return UIStoryboard(name: id.rawValue, bundle: bundle)
    }
    
    static func initialViewController(fromStoryboardId id: Storyboards, bundle: Bundle? = nil) -> UIViewController {
        guard let rootController = self.create(fromStoryboardId: id, bundle: bundle).instantiateInitialViewController() else {
            fatalError("Cann't instantiate root view controller from storyboard \(id.rawValue)")
        }
        return rootController
    }
}
