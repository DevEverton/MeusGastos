//
//  MonthIncome.swift
//  Meus Gastos
//
//  Created by Everton Carneiro on 13/09/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import Foundation


struct MonthIncome {
    
    var Jan = Income()
    var Feb = Income()
    var Mar = Income()
    var Apr = Income()
    var May = Income()
    var Jun = Income()
    var Jul = Income()
    var Aug = Income()
    var Sep = Income()
    var Oct = Income()
    var Nov = Income()
    var Dec = Income()

    func currentMonth () -> Int {
        
        let date = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day], from: date)
        let monthNumber = components.month!
        return monthNumber
        
    }
    
    mutating func addIncomeToTheMonth(NewIncome: Double, category: CategoriesIncome){
        
        let currentMonth = self.currentMonth()
        
        switch currentMonth {
        case 1:
            self.Jan.addIncome(newIncome: NewIncome, category: category)
            break
        case 2:
            self.Feb.addIncome(newIncome: NewIncome, category: category)
            break
        case 3:
            self.Mar.addIncome(newIncome: NewIncome, category: category)
            break
        case 4:
            self.Apr.addIncome(newIncome: NewIncome, category: category)
            break
        case 5:
            self.May.addIncome(newIncome: NewIncome, category: category)
            break
        case 6:
            self.Jun.addIncome(newIncome: NewIncome, category: category)
            break
            
        case 7:
            self.Jul.addIncome(newIncome: NewIncome, category: category)
            break
        case 8:
            self.Aug.addIncome(newIncome: NewIncome, category: category)
            break
        case 9:
            self.Sep.addIncome(newIncome: NewIncome, category: category)
            break
        case 10:
            self.Oct.addIncome(newIncome: NewIncome, category: category)
            break
        case 11:
            self.Nov.addIncome(newIncome: NewIncome, category: category)
            break
        case 12:
            self.Dec.addIncome(newIncome: NewIncome, category: category)
            break
        default:
            break
        }
        
    }
    
    
    
    
    
}
