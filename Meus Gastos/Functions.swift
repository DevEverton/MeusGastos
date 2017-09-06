//
//  Functions.swift
//  Meus Gastos
//
//  Created by Everton Carneiro on 06/09/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import Foundation
import UIKit


func formatToCurrency( number: String) -> String {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = NumberFormatter.Style.currency
    numberFormatter.currencySymbol = ""
    if let number2 = Double(number){
        return numberFormatter.string(from: NSNumber(value: number2))!
    }
    return number
}

func formatToShow (formattedDecimal: String) -> String{
    let format1 = formattedDecimal.replacingOccurrences(of: ".", with: "")
    var format2 = format1.replacingOccurrences(of: ",", with: ".")
    format2.insert(",", at: format2.index(format2.endIndex, offsetBy: -2))
    return format2
}

func castToDouble(value: String) -> Double{
    var value = value
    value.insert(".", at: value.index(value.endIndex, offsetBy: -2))
    let valueDbl = Double(value)!
    return valueDbl
}



