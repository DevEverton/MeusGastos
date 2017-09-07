//
//  DescribeIncomeVC.swift
//  Meus Gastos
//
//  Created by Everton Carneiro on 07/09/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import UIKit

class DescribeIncomeVC: UIViewController, UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var categoryTextFiled: UITextField!
    @IBOutlet weak var expenseLabel: UILabel!
    @IBOutlet weak var clipBoardicon: UIImageView!
    @IBOutlet weak var tagIcon: UIImageView!
    

    let categoryPicker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionTextField.delegate = self
        categoryPicker.delegate = self
        categoryPicker.dataSource = self
        categoryTextFiled.inputView = categoryPicker
        categoryPicker.backgroundColor = UIColor(red:0.87, green:0.81, blue:0.70, alpha:1.0)
        
        expenseLabel.text = formatExpense(expense: Variables.typedValue)
        Variables.typedValueDbl = castToDouble(value: Variables.typedValue)
        changeIconColor(icon: clipBoardicon)
        changeIconColor(icon: tagIcon)
        
        
    }
    
    func changeIconColor(icon: UIImageView){
        
        icon.image = icon.image!.withRenderingMode(.alwaysTemplate)
        icon.tintColor = UIColor(red:0.27, green:0.19, blue:0.04, alpha:1.0)
        
    }
    
    func formatExpense(expense: String) -> String {
        var expense = expense
        expense.insert(".", at: expense.index(expense.endIndex, offsetBy: -2))
        let tempStr = formatToCurrency(number: expense)
        return tempStr
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        descriptionTextField.resignFirstResponder()
        return true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Constants.pickerCategoryIncomeArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Constants.pickerCategoryIncomeArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        categoryTextFiled.text = Constants.pickerCategoryIncomeArray[row]
        self.view.endEditing(false)
    }




}
