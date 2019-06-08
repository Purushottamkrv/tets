//
//  FoodShortDetailTVC.swift
//  InstaFitness
//
//  Created by mac on 8/24/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class FoodShortDetailTVC: UITableViewCell {

    @IBOutlet weak var btn:UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      btn.layer.borderWidth = 1
       btn.layer.borderColor = UIColor.lightGray.cgColor
        btn.layer.cornerRadius = 5
        btn.layer.masksToBounds = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
