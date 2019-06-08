//
//  TrainerProfileDetailTVC.swift
//  InstaFitness
//
//  Created by mac on 8/20/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class TrainerProfileDetailTVC: UITableViewCell {

    @IBOutlet weak var img:UIImageView!
    @IBOutlet weak var userDetail:UILabel!
    @IBOutlet weak var information_lab:UILabel!

var trainerInformation:TrainerInformation!
    {
       didSet
       {
        userDetail.text = trainerInformation.detail
        information_lab.text = trainerInformation.information
        img.image = trainerInformation.image
       }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
