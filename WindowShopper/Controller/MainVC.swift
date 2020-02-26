//
//  ViewController.swift
//  WindowShopper
//
//  Created by Mohamed on 2/25/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.580126236, blue: 0.01286631583, alpha: 1)
        calcBtn.setTitle("Calcultor", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculatebtn), for: .touchUpInside)
        wageTxt.inputAccessoryView =  calcBtn
        priceTxt.inputAccessoryView = calcBtn
    }

    @objc func calculatebtn(){
        print("press Here")
    }

}

