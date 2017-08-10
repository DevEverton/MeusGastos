//
//  CategoryCollectionViewCell.swift
//  Meus Gastos
//
//  Created by Everton Carneiro on 04/08/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import UIKit
@IBDesignable

class CategoryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
        
    }
    


    
}
