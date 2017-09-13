//
//  MonthExpenses.swift
//  Meus Gastos
//
//  Created by Everton Carneiro on 14/08/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import Foundation


struct MonthExpenses {
    
    var Jan = Expenses()
    var Feb = Expenses()
    var Mar = Expenses()
    var Apr = Expenses()
    var May = Expenses()
    var Jun = Expenses()
    var Jul = Expenses()
    var Aug = Expenses()
    var Sep = Expenses()
    var Oct = Expenses()
    var Nov = Expenses()
    var Dec = Expenses()
    
    func currentMonth () -> Int {
        
        let date = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day], from: date)
        let monthNumber = components.month!
        return monthNumber
        
    }
    
    mutating func addExpenseToTheMonth(NewExpense: Double, category: Categories){
        
        let currentMonth = self.currentMonth()
        
        switch currentMonth {
        case 1:
            self.Jan.addExpense(newExpense: NewExpense, category: category)
            break
        case 2:
            self.Feb.addExpense(newExpense: NewExpense, category: category)
            break
        case 3:
            self.Mar.addExpense(newExpense: NewExpense, category: category)
            break
        case 4:
            self.Apr.addExpense(newExpense: NewExpense, category: category)
            break
        case 5:
            self.May.addExpense(newExpense: NewExpense, category: category)
            break
        case 6:
            self.Jun.addExpense(newExpense: NewExpense, category: category)
            break
        case 7:
            self.Jul.addExpense(newExpense: NewExpense, category: category)
            break
        case 8:
            self.Aug.addExpense(newExpense: NewExpense, category: category)
            break
        case 9:
            self.Sep.addExpense(newExpense: NewExpense, category: category)
            break
        case 10:
            self.Oct.addExpense(newExpense: NewExpense, category: category)
            break
        case 11:
            self.Nov.addExpense(newExpense: NewExpense, category: category)
            break
        case 12:
            self.Dec.addExpense(newExpense: NewExpense, category: category)
            break
        default:
            break
        }
        
    }
    
    
}
