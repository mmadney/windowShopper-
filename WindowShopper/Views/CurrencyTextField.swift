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
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        drawCurrencyLbl(size: size)
    }
    
    func drawCurrencyLbl(size : CGFloat){
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2 , width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.5629340056, green: 0.5629340056, blue: 0.5629340056, alpha: 1)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
        
    }
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
