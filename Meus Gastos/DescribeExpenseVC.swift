//
//  DescribeExpenseVC.swift
//  Meus Gastos
//
//  Created by Everton Carneiro on 11/08/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import UIKit

class DescribeExpenseVC: UIViewController, UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate{
    
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var categoryTextFiled: UITextField!
    
    let categoryPicker = UIPickerView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionTextField.delegate = self
        categoryPicker.delegate = self
        categoryPicker.dataSource = self
        categoryTextFiled.inputView = categoryPicker
        categoryPicker.backgroundColor = UIColor(red:0.21, green:0.14, blue:0.04, alpha:1.0)
        
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
        return Constants.pickerCategoryArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       return Constants.pickerCategoryArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        categoryTextFiled.text = Constants.pickerCategoryArray[row]
        self.view.endEditing(false)
    }
    

}
