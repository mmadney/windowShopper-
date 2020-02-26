//
//  CurrencyTextField.swift
//  WindowShopper
//
//  Created by Mohamed on 2/26/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit


@IBDesignable
class CurrencyTextField: UITextField {
    override func prepareForInterfaceBuilder() {
        CustoimzeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        CustoimzeView()
    }
    
    func CustoimzeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        if let tempPlaceHolder = placeholder{
            let place = NSAttributedString(string: tempPlaceHolder, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
  
}
