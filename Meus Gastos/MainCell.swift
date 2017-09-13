//
//  MainCell.swift
//  Meus Gastos
//
//  Created by Everton Carneiro on 13/09/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import UIKit

class MainCell: UITableViewCell {
    
    
    @IBOutlet weak var categoryImg: UIImageView!
    @IBOutlet weak var valueLbl: UILabel!
    @IBOutlet weak var arrowImg: UIImageView!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
