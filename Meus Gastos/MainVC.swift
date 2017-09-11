//
//  MainVC.swift
//  Meus Gastos
//
//  Created by Everton Carneiro on 31/07/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import UIKit

class MainVC: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var mainButton: RoundedButton!
    @IBOutlet weak var incomeButton: RoundedButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var expenseButton: RoundedButton!
    @IBOutlet weak var numbersView: RoundedView!
    @IBOutlet weak var enterValueButtonOutlet: RoundedButton!
    @IBOutlet weak var numbersViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var numbersViewLabel: UILabel!

    
    var incomeButtonLocation: CGPoint!
    var expenseButtonLocation: CGPoint!
  

    override func viewDidLoad() {
        super.viewDidLoad()
        incomeButtonLocation = incomeButton.center
        expenseButtonLocation = expenseButton.center
        
        tableView.layer.cornerRadius = 8
        numbersView.alpha = 0
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        numbersViewLabel.text = "0,00"
        Variables.typedValue = "000"
        
    
    }
    
    override func viewDidLayoutSubviews() {
        incomeButton.center = mainButton.center
        expenseButton.center = mainButton.center

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Constants.categoryArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectCell = collectionView.dequeueReusableCell(withReuseIdentifier: "categories", for: indexPath) as! CategoryCollectionViewCell
        //collectCell.categoryLabel.text = myExpenses.categoriesArray[indexPath.row]
        collectCell.categoryIcon.image = Constants.categoryArray[indexPath.row]
        
        
        return collectCell
    }
    

   
    @IBAction func mainButtonAct(_ sender: Any) {
        
        if incomeButton.center == mainButton.center && expenseButton.center == mainButton.center {
            UIView.animate(withDuration: 0.3, animations: {
                self.incomeButton.center = self.incomeButtonLocation
                self.expenseButton.center = self.expenseButtonLocation
            })
        }else{
            UIView.animate(withDuration: 0.3, animations: {
                self.incomeButton.center = self.mainButton.center
                self.expenseButton.center = self.mainButton.center
            })
            
        }
 
    }
    
    @IBAction func incomeButtonAct(_ sender: Any) {
        
        enterValueButtonOutlet.backgroundColor = UIColor(red:0.30, green:0.85, blue:0.39, alpha:1.0)
        numbersViewBottomConstraint.constant = 10
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
            
        })
        
        UIView.animate(withDuration: 0.5, animations: {
            self.numbersView.alpha = 1
        })
    }
    
    @IBAction func enterValueButton(_ sender: Any) {
        
        numbersViewBottomConstraint.constant = -170
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
        })
        
        UIView.animate(withDuration: 0.5, animations: {
            self.numbersView.alpha = 0
        })
        
        if enterValueButtonOutlet.backgroundColor == UIColor(red:1.00, green:0.23, blue:0.19, alpha:1.0){
        performSegue(withIdentifier: "describeExpense", sender: (Any).self)
        }else{
            performSegue(withIdentifier: "describeIncome", sender: (Any).self)
        }
    }
    

    
    @IBAction func expenseButtonAct(_ sender: Any) {
        
        enterValueButtonOutlet.backgroundColor = UIColor(red:1.00, green:0.23, blue:0.19, alpha:1.0)
        
        numbersViewBottomConstraint.constant = 10
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
            
        })
        
        UIView.animate(withDuration: 0.5, animations: {
            self.numbersView.alpha = 1
        })
        
        
    }
    

    @IBAction func insertNumber(_ sender: Any) {
        
        
        Variables.typedValue += (sender as AnyObject).title(for: .normal)!
        if Variables.typedValue.hasPrefix("0"){
            Variables.typedValue.remove(at: Variables.typedValue.startIndex)
        }
        Variables.typedValue.insert(".", at: Variables.typedValue.index(Variables.typedValue.endIndex, offsetBy: -2))
        let tempStr = formatToCurrency(number: Variables.typedValue)
        numbersViewLabel.text = tempStr
        let tempStr2 = tempStr.replacingOccurrences(of: "[,.]", with: "",options: .regularExpression)
        Variables.typedValue = tempStr2
        

    }
    
    @IBAction func eraseValueButton (_ sender: Any){
        
        if Variables.typedValue.characters.count < 4 {
            Variables.typedValue.insert("0", at: Variables.typedValue.startIndex)
        }
        var erasedNumber = String(Variables.typedValue.characters.dropLast(1))
        erasedNumber.insert(".", at: erasedNumber.index(erasedNumber.endIndex, offsetBy: -2))
        let tempStr = formatToCurrency(number: erasedNumber)
        numbersViewLabel.text = tempStr
        let tempStr2 = tempStr.replacingOccurrences(of: "[,.]", with: "",options: .regularExpression)
        Variables.typedValue = tempStr2
        
    }
    
   
    
    
    
}


    





