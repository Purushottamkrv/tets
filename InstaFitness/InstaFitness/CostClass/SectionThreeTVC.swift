//
//  SectionThreeTVC.swift
//  InstaFitness
//
//  Created by mac on 8/17/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class SectionThreeTVC: UITableViewCell {

@IBOutlet weak var infomation_lab:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
   infomation_lab.layer.cornerRadius = 5
   infomation_lab.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
