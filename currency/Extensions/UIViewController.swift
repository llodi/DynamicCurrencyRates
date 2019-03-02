//
//  UIViewController.swift
//  
//
//  Created by Ilya Dolgopolov on 04.07.2018.
//  Copyright © 2018 Ilya. All rights reserved.
//

import UIKit

extension UIViewController {
    
    private class func instantiateControllerInStoryboard<T: UIViewController>(_ storyboard: UIStoryboard, identifier: String) -> T {
        guard let board = storyboard.instantiateViewController(withIdentifier: identifier) as? T else {
            fatalError("Unable to instantiate \(String(describing: self))!!! Check that the Stroryboard ID is set properly in your Storyboard")
        }
        return board
    }
    
    class func controllerInStoryboard(_ storyboard: UIStoryboard, identifier: String) -> Self {
        return instantiateControllerInStoryboard(storyboard, identifier: identifier)
    }
    
    class func controllerInStoryboard(_ storyboard: UIStoryboard) -> Self {
        return controllerInStoryboard(storyboard, identifier: String(describing: self))
    }
    
    class func controllerFromStoryboard(_ storyboard: Storyboards) -> Self {
        return controllerInStoryboard(UIStoryboard(name: storyboard.rawValue, bundle: nil), identifier: String(describing: self))
    }
    
    static func fromStoryboard() -> UIViewController {
        
        let storyboard = UIStoryboard(name: String(describing: self), bundle: nil)
        
        guard let controller = storyboard.instantiateInitialViewController() else {
            fatalError("")
        }
        
        return controller
    }
}
