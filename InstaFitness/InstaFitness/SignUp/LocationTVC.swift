//
//  LocationTVC.swift
//  InstaFitness
//
//  Created by mac on 8/28/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class LocationTVC: UITableViewCell {

    @IBOutlet weak var loc_btn:UIButton!
    @IBOutlet weak var signUp_btn:UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
  loc_btn.layer.borderWidth = 1
  loc_btn.layer.borderColor = UIColor.lightGray.cgColor
  loc_btn.layer.cornerRadius = 5
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
