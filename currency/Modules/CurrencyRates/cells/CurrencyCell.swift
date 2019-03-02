//
//  CurrencyCell.swift
//  currency
//
//  Created by Ilya on 27/02/2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import UIKit


class CurrencyCell: UITableViewCell {
    
    @IBOutlet weak var currencyName: UILabel!    
    @IBOutlet weak var currencyRateField: UITextField!
    
    
    var onBeginEdit: ((String) -> ())?
    var onEditingChanged: ((String) -> ())?

    @IBAction func didBeginEdit(_ sender: UITextField) {
        if let text = sender.text {
            onBeginEdit?(text)
        }
    }
    
    @IBAction func editingChanged(_ sender: UITextField) {
        if let text = sender.text {
            onEditingChanged?(text)
        }
    }
}

