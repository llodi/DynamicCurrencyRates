//
//  CurrencyRateItemCell.swift
//  currency
//
//  Created by Ilya on 02/03/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import UIKit

class CurrencyRateItemCell: UITableViewCell, NibLoadable {
    
    @IBOutlet weak var currencyName: UILabel!
    @IBOutlet weak var currencyRateField: UITextField! {
        didSet {
            currencyRateField.delegate = self
        }
    }
    
    var onEditingChanged: ((String) -> ())?
    
    @IBAction func editingChanged(_ sender: UITextField) {
        if let text = sender.text {
            onEditingChanged?(text)
        }
    }
}


extension CurrencyRateItemCell: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        endEditing(true)
        return true
    }
}
