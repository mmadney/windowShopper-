//
//  Wage.swift
//  WindowShopper
//
//  Created by Mohamed on 2/26/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation

class Wage {
    class func getHour(forWage wage:Double,andPrice price:Double)->Int{
        return Int(ceil(price / wage))
    }
}
