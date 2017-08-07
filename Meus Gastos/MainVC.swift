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
    var numbersViewString = ""
    
    var incomeButtonLocation: CGPoint!
    var expenseButtonLocation: CGPoint!
  
    let categories = Categories()

    override func viewDidLoad() {
        super.viewDidLoad()
        incomeButtonLocation = incomeButton.center
        expenseButtonLocation = expenseButton.center
        
        tableView.layer.cornerRadius = 10
        numbersView.alpha = 0
        tableView.layer.cornerRadius = 10
        
    }
    
    override func viewDidLayoutSubviews() {
        incomeButton.center = mainButton.center
        expenseButton.center = mainButton.center

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.categoriesArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectCell = collectionView.dequeueReusableCell(withReuseIdentifier: "categories", for: indexPath) as! CategoryCollectionViewCell
        collectCell.categoryLabel.text = categories.categoriesArray[indexPath.row]
        
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
    
    func withCommas(number: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
        return numberFormatter.string(from: NSNumber(value:number))!
    }
    
    @IBAction func insertNumber(_ sender: Any) {
        
        numbersViewString += (sender as AnyObject).title(for: .normal)!
        
        //let formattedString = numbersViewString as! NSMutableString
       // formattedString.insert(",", at: 0)
        
        numbersViewLabel.text = numbersViewString
        
    }
    
    
    
    
}


    





