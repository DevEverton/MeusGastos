//
//  Categories.swift
//  Meus Gastos
//
//  Created by Everton Carneiro on 07/08/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import Foundation


class Categories {
    
    var valueAlimentação = Double()
    var valueLazer = Double()
    var valueMoradia = Double()
    var valueSaúde = Double()
    var valueTransporte = Double()
    var valueEducação = Double()
    var valueVestuário = Double()
    
    
    let categoriesArray =
    [
            "Alimentação",
            "Lazer",
            "Moradia",
            "Saúde",
            "Transporte",
            "Educação" ,
            "Vestuário"
    ]

    func addExpense (value: Double, newExpense: Double) -> Double{
        let newValue = value + newExpense
        return newValue
    }
    
}







