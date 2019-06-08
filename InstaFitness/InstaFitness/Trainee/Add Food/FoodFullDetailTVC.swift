//
//  FoodFullDetailTVC.swift
//  InstaFitness
//
//  Created by mac on 8/23/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class FoodFullDetailTVC: UITableViewCell {

    @IBOutlet weak var stack:UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
stack.layer.borderWidth = 1
stack.layer.borderColor = UIColor.lightGray.cgColor
 stack.layer.masksToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
