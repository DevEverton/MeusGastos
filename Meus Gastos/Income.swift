//
//  Income.swift
//  Meus Gastos
//
//  Created by Everton Carneiro on 07/09/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import Foundation


class Income {
    
    private var _valueSalário = Double()
    private var _valueRenEx = Double()
    private var _valueRetInv = Double()
    
    var valueSalário: Double {
        get{
            return _valueSalário
        }set{
            _valueSalário = newValue
        }
    }
    
    var valueRenEx: Double {
        get{
            return _valueRenEx
        }set{
            _valueRenEx = newValue
        }
    }
    
    var valueRetInv: Double {
        get{
            return _valueRetInv
        }set{
            _valueRetInv = newValue
        }
    }
    
    func addExpense(newExpense: Double, category: CategoriesIncome){
        
        switch category {
        case .Salário:
            valueSalário += newExpense
        case .RendaExtra:
            valueRenEx += newExpense
        case .RetornoInvestimentos:
            valueRetInv += newExpense
            
        }

    
    }

    
}

