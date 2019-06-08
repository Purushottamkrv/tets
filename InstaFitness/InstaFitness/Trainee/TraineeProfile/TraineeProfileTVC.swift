//
//  TraineeProfileTVC.swift
//  InstaFitness
//
//  Created by mac on 8/25/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class TraineeProfileTVC: UITableViewCell {

    
    @IBOutlet weak var img:UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        img.layer.cornerRadius = img.frame.size.height/2
        img.layer.masksToBounds = true

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
