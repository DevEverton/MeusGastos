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
    
    
    private var _valueAlimentação = Double()
    private var _valueLazer = Double()
    private var _valueMoradia = Double()
    private var _valueSaúde = Double()
    private var _valueTransporte = Double()
    private var _valueEducação = Double()
    private var _valueVestuário = Double()
    private var _valueOutros = Double()
    private var _description = String()
    private var _category = String()
    
    
    var valueAlimentação: Double {
        get{
            return _valueAlimentação
        }set{
            _valueAlimentação = newValue
        }
    }
    
    var valueLazer: Double {
        get{
            return _valueLazer
        }set{
            _valueLazer = newValue
        }
    }
    
    var valueMoradia: Double {
        get{
            return _valueMoradia
        }set{
            _valueMoradia = newValue
        }
    }
    
    var valueSaúde: Double {
        get{
            return _valueSaúde
        }set{
            _valueSaúde = newValue
        }
    }
    
    var valueTransporte: Double {
        get{
            return _valueTransporte
        }set{
            _valueTransporte = newValue
        }
    }
    
    var valueEducação: Double {
        get{
            return _valueEducação
        }set{
            _valueEducação = newValue
        }
    }
    
    var valueVestuário: Double {
        get{
            return _valueVestuário
        }set{
            _valueVestuário = newValue
        }
    }
    
    var valueOutros: Double {
        get{
            return _valueOutros
        }set{
            _valueOutros = newValue
        }
    }
    
    var description: String {
        get{
            return _description
        }set{
            _description = newValue
        }
    }
    
    var category: String {
        get{
            return _category
        }set{
            _category = newValue
        }
    }
    
    

    
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







