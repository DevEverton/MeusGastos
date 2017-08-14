//
//  Categories.swift
//  Meus Gastos
//
//  Created by Everton Carneiro on 07/08/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import Foundation
import UIKit

struct Expenses {
    
    
    var valueOnTheScreen = String()
    var valueAlimentação = Double()
    var valueLazer = Double()
    var valueMoradia = Double()
    var valueSaúde = Double()
    var valueTransporte = Double()
    var valueEducação = Double()
    var valueVestuário = Double()
    var valueOutros = Double()
    

    let categoryArray = [UIImage(named: "Alimentacao"), UIImage(named: "Lazer"), UIImage(named: "Transporte"), UIImage(named: "Moradia"), UIImage(named: "Saude"), UIImage(named: "Educacao"), UIImage(named: "Vestuario"), UIImage(named: "Outros"), ]

    mutating func addExpense(newExpense: Double, category: Categories){
        
        switch category {
        case .Alimentação:
            valueAlimentação += newExpense
        case .Educação:
            valueEducação += newExpense
        case .Lazer:
            valueLazer += newExpense
        case .Moradia:
            valueMoradia += newExpense
        case .Saúde:
            valueSaúde += newExpense
        case .Transporte:
            valueTransporte += newExpense
        case .Vestuário:
            valueVestuário += newExpense
        case .Outros:
            valueOutros += newExpense

        }
        
    }
    
}







