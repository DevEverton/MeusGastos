//
//  RoundedView.swift
//  Meus Gastos
//
//  Created by Everton Carneiro on 31/07/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import UIKit

@IBDesignable

class RoundedView: UIView {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
        
    }

}
