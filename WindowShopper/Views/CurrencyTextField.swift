//
//  CurrencyTextField.swift
//  WindowShopper
//
//  Created by Mohamed on 2/26/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class CurrencyTextField: UITextField {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5)
        layer.cornerRadius = 5.0
        textAlignment = .center
        if let tempPlaceHolder = placeholder{
            let place = NSAttributedString(string: tempPlaceHolder, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
        }
    }
  
}
