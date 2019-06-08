//
//  AddTraineeTVC.swift
//  InstaFitness
//
//  Created by mac on 8/22/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class AddTraineeTVC: UITableViewCell {

    @IBOutlet weak var invite_btn:UIButton!
    @IBOutlet weak var img:UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
     invite_btn.setRadius()
     invite_btn.layer.borderWidth = 1
     invite_btn.layer.borderColor = UIColor.lightGray.cgColor
      img.setRadius()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
