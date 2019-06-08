//
//  MyTraineeTVC.swift
//  InstaFitness
//
//  Created by mac on 8/22/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class MyTraineeTVC: UITableViewCell {

    @IBOutlet weak var img:UIImageView!
    @IBOutlet weak var crossbtn_outlet: UIButton!
    @IBOutlet weak var chek_img:UIImageView!
    @IBOutlet weak var cross_img: UIImageView!
    
    
    @IBOutlet weak var chekbtn_outlet: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        img.setRadius()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
