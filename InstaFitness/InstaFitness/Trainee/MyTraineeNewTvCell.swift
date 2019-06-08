//
//  MyTraineeNewTvCell.swift
//  InstaFitness
//
//  Created by Purushottam on 05/10/18.
//  Copyright © 2018 TechnoBrix. All rights reserved.
//

import UIKit

class MyTraineeNewTvCell: UITableViewCell {
    @IBOutlet weak var person_imgview: UIImageView!
    
    @IBOutlet weak var callbtn_outlet: UIButton!
    @IBOutlet weak var messagebtn_outlet: UIButton!
    @IBOutlet weak var looseweight_lbl: UILabel!
    @IBOutlet weak var age_lbl: UILabel!
    @IBOutlet weak var name_lbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
